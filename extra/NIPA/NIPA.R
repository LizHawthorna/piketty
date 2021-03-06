### Current- and capital-account statistics in the international transactions accounts differ slightly from statistics in the National Income and Product Accounts (NIPAs) because of adjustments made to convert the international transactions statistics to national economic accounting concepts.  A reconciliation between annual statistics in the two sets of accounts appears in 
### <a href="http://www.bea.gov/iTable/iTableHtml.cfm?reqid=9&amp;step=3&amp;isuri=1&amp;903=136">table 4.3B</a>.

### Convenience functions
# returns string w/o leading whitespace
trim.leading <- function (x)  sub("^\\s+", "", x)
# returns string w/o trailing whitespace
trim.trailing <- function (x) sub("\\s+$", "", x)
# returns string w/o leading or trailing whitespace
trim <- function (x) gsub("^\\s+|\\s+$", "", x)

# Set directory, load data, transpose, clean 
setwd("~/piketty/knitr/slides/extra/NIPA/") 
library("xlsx")
df <- read.xlsx("Ita_T1.2.xls", sheetName = "Annual", rowIndex = 6:121, colIndex = 2:17, header = FALSE, stringsAsFactors = FALSE)
df <- t(df)
df.names <- c("Year", trim(df[1 ,-1]))  # trim white spaces
df <- df[-1, ]
df[df == "n.a."] <- NA
df <- as.data.frame(as.matrix(df))
names(df) <- df.names
row.names(df) <- NULL

# clean some names
names(df)[names(df) == "Balance on current account (line 1 less line 31) /5/"] <- "Balance on current account"
names(df)[names(df) == "Balance on goods and services (line 2 less line 32)"] <- "Balance on goods and services"
names(df)[names(df) == "Balance on goods (line 3 less line 33)"] <- "Balance on goods"
names(df)[names(df) == "Balance on services (line 13 less line 42)"] <- "Balance on services"
names(df)[names(df) == "Balance on primary income (line 23 less line 52)"] <- "Balance on primary income"
names(df)[names(df) == "Balance on secondary income (line 30 less line 58)"] <- "Balance on secondary income"
names(df)[names(df) == "Balance on capital account (line 59 less line 60) /5/"] <- "Balance on capital account"

# reshape and save data
library("reshape2")
df <- melt(df, id.vars = "Year")
df$value <- as.numeric(df$value)
df <- na.omit(df)
save(df, file = "data/df.Rda")


# Plots
# format axes
library("ggplot2")
library("scales")
dollarMillion <- function(x) {
  paste0("$", format(x, big.mark = ",", decimal.mark = ".", trim = TRUE, scientific = FALSE), "M")
}

# Plot 1: Current Account
# subset data
setwd("~/piketty/knitr/slides/extra/NIPA/")
load("df.Rda")
dfs <- subset(df, variable %in% c("Exports of goods and services and income receipts (credits)", "Imports of goods and services and income payments (debits)", "Balance on current account"))
dfs$value <- dfs$value/1000

ggplot(data = dfs, aes(x = Year, y = value, group = variable, colour = variable, shape = variable)) + geom_line() + geom_point(size = 3) + ylab("Current Account Transactions (Million $)") + xlab(NULL) +  theme_bw(14) + scale_x_discrete(breaks = seq(1999, 2013, by = 2)) + scale_y_continuous(labels = dollarMillion, limits = c(-1000, 4000), breaks = seq(-1000, 4000, by = 500)) + theme(legend.key = element_blank(), legend.background = element_rect(colour = 'black', fill = 'white'), legend.position = "top", legend.title = element_blank()) + guides(col = guide_legend(ncol = 1)) + geom_hline(yintercept = 0)



# variant of plot above: 
setwd("~/piketty/knitr/slides/extra/NIPA/")
load("df.Rda")
dollarBillion <- function(x) {
  paste0("$", format(x, big.mark = ",", decimal.mark = ".", trim = TRUE, scientific = FALSE), "B")
}
dfs1 <- subset(df, variable %in% c("Exports of goods and services and income receipts (credits)", "Imports of goods and services and income payments (debits)"), drop = TRUE)
dfs2 <- subset(df, variable %in% c("Balance on current account"))
dfs1$value <- dfs1$value/1000000 # change units to billions
dfs2$value <- dfs2$value/1000000 # change units to billions

library(ggplot2)
library(scales)
ggplot(data = dfs1, aes(x = Year, y = value, group = variable)) + 
    geom_line(aes(colour = variable)) + 
    geom_point(aes(colour = variable, shape = variable), size = 5) + 
    geom_bar(data = dfs2, aes(x = Year, y = value, fill = variable), stat = "identity", position = 'identity', alpha = 0.8) + 
    ylab("Current Account Transactions (Billion $)") + xlab(NULL) + 
    theme_bw(18) + scale_x_discrete(breaks = seq(1999, 2013, by = 2)) + 
    scale_y_continuous(labels = dollarBillion, limits = c(-1, 4), breaks = seq(-1, 4, by = .5)) + 
    geom_hline(yintercept = 0) + 
    guides(col = guide_legend(ncol = 1)) + 
    theme(
        legend.position = "top", 
        legend.box.just = "left",
        legend.key = element_blank(), 
        legend.title = element_blank()
    )

cols <- c("darkgreen", "darkblue", NA)
last_plot() + scale_colour_manual(name = "legend", values = cols) + scale_shape_manual(name = "legend", values = c(15, 17, 32)) + scale_fill_manual(name = "legend", values = c("orange", NA, NA))


# save as pdf + png
ggsave(last_plot(), file = "figures/Figure_Current_Account_Transactions.pdf", width = 16, height = 10, dpi = 300)
ggsave(last_plot(), file = "figures/Figure_Current_Account_Transactions.png", width = 16, height = 10)


# Plot 2: Current Account Components
# subset data
load("df.Rda")
dfs <- subset(df, variable %in% c("Balance on current account", "Balance on goods and services", "Balance on goods", "Balance on services"))
dfs$value <- dfs$value/1000

ggplot(data = dfs, aes(x = Year, y = value, group = variable, colour = variable, shape = variable)) + geom_line() + geom_point(size = 3) + ylab("Current Account Components (Million $)") + xlab(NULL) +  theme_bw(14) + scale_x_discrete(breaks = seq(1999, 2013, by = 2)) + scale_y_continuous(labels = dollarMillion, limits = c(-1000, 300), breaks = seq(-1000, 500, by = 200)) + theme(legend.key = element_blank(), legend.background = element_rect(colour = 'black', fill = 'white'), legend.position = "top", legend.title = element_blank()) + guides(col = guide_legend(ncol = 2)) + geom_hline(yintercept = 0)

# save as pdf + png
ggsave(last_plot(), file = "figures/Figure_Current_Account_Components.pdf", width = 8, height = 5, dpi = 300)
ggsave(last_plot(), file = "figures/Figure_Current_Account_Components.png", width = 8, height = 5)



# Plot 3: Current Account V. Capital Account
# subset data
load("df.Rda")
dfs <- subset(df, variable %in% c("Balance on current account", "Balance on capital account"))
dfs$value <- dfs$value/1000

ggplot(data = dfs, aes(x = Year, y = value, group = variable, colour = variable, shape = variable)) + geom_line() + geom_point(size = 3) + ylab("Current Account + Capital Account (Million $)") + xlab(NULL) +  theme_bw(14) + scale_x_discrete(breaks = seq(1999, 2013, by = 2)) + scale_y_continuous(labels = dollarMillion, limits = c(-900, 50), breaks = seq(-800, 100, by = 200)) + theme(legend.key = element_blank(), legend.background = element_rect(colour = 'black', fill = 'white'), legend.position = "top", legend.title = element_blank()) + guides(col = guide_legend(ncol = 2)) + geom_hline(yintercept = 0) + guides(col = guide_legend(ncol = 1)) 

# save as pdf + png
ggsave(last_plot(), file = "figures/Figure_Current_Account_Capital_Account.pdf", width = 8, height = 5, dpi = 300)
ggsave(last_plot(), file = "figures/Figure_Current_Account_Capital_Account.png", width = 8, height = 5)



# Plot 4: Current Account Components: Incomes
# subset data
load("df.Rda")
dfs <- subset(df, variable %in% c("Primary income receipts", "Primary income payments", "Secondary income (current transfer) receipts /2/", "Secondary income (current transfer) payments /2/"))
dfs$value <- dfs$value/1000

ggplot(data = dfs, aes(x = Year, y = value, group = variable, colour = variable, shape = variable)) + geom_line() + geom_point(size = 3) + ylab("Current Account Components: Incomes (Million $)") + xlab(NULL) +  theme_bw(14) + scale_x_discrete(breaks = seq(1999, 2013, by = 2)) + scale_y_continuous(labels = dollarMillion, limits = c(0, 900), breaks = seq(0, 900, by = 100)) + theme(legend.key = element_blank(), legend.background = element_rect(colour = 'black', fill = 'white'), legend.position = "top", legend.title = element_blank()) + guides(col = guide_legend(ncol = 2)) + guides(col = guide_legend(ncol = 1)) 

# save as pdf + png
ggsave(last_plot(), file = "figures/Figure_Current_Account_Components_Incomes.pdf", width = 8, height = 5, dpi = 300)
ggsave(last_plot(), file = "figures/Figure_Current_Account_Components_Incomes.png", width = 8, height = 5)


