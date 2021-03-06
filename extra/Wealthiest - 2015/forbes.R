### Data Source: Forbes Magazine 1996-2015
setwd("~/piketty/extra/Wealthiest - 2015/")


### Step 1. Read and merge data
library("xlsx") 

## 1996
df <- read.xlsx("data/forbes/forbes-1996-world-billionaires.xls", 
    sheetName = "Sheet1", header = FALSE, stringsAsFactors = FALSE)
names(df) <- c("Rank", "Name", "Wealth", "Country")
df$Year <- 1996

## 1997 
df0 <- df
df <- read.xlsx("data/forbes/forbes-1997-world-top200.xls", 
    sheetName = "Sheet1", header = FALSE, stringsAsFactors = FALSE)
names(df) <- c("Rank", "Name", "Country", "Company/Industry", "Wealth")
df$Year <- 1997
df0 <- merge(df, df0, all = TRUE)

## 1998
df <- read.xlsx("data/forbes/forbes-1998-world-top200.xls", 
    sheetName = "Sheet1", header = FALSE, stringsAsFactors = FALSE)
names(df) <- c("Rank", "Name", "Wealth", "Country")
df$Year <- 1998
df0 <- merge(df, df0, all = TRUE)

## 1999
df <- read.xlsx("data/forbes/forbes-1999-world-billionaires.xls", 
    sheetName = "Sheet1", header = FALSE, stringsAsFactors = FALSE)
names(df) <- c("Rank", "Name", "Wealth", "Country")
df$Year <- 1999
df0 <- merge(df, df0, all = TRUE)

## 2000
df <- read.xlsx("data/forbes/forbes-2000-world-billionaires.xls", 
    sheetName = "Sheet1", header = FALSE, stringsAsFactors = FALSE)
names(df) <- c("Rank", "Name", "Wealth", "Country")
df$Year <- 2000
df0 <- merge(df, df0, all = TRUE)

## 2001
df <- read.xlsx("data/forbes/forbes-2001-world-billionaires.xls", 
    sheetName = "Sheet1", header = FALSE, stringsAsFactors = FALSE)
names(df) <- c("Rank", "Name", "Wealth", "Country")
df$Year <- 2001
df0 <- merge(df, df0, all = TRUE)

## 2002
df <- read.xlsx("data/forbes/forbes-2002-world-billionaires.xls", 
    sheetName = "Sheet1", header = FALSE, stringsAsFactors = FALSE)
names(df) <- c("Rank", "Name", "Wealth", "Country")
df$Year <- 2002
df0 <- merge(df, df0, all = TRUE)

## 2003
df <- read.xlsx("data/forbes/forbes-2003-world-billionaires.xls", 
    sheetName = "Sheet1", header = FALSE, stringsAsFactors = FALSE)
names(df) <- c("Rank", "Name", "Age", "Wealth", "Country")
df$Year <- 2003
df0 <- merge(df, df0, all = TRUE)

## 2004
df <- read.xlsx("data/forbes/forbes-2004-world-billionaires.xls", 
    sheetName = "Sheet1", header = FALSE, stringsAsFactors = FALSE)
names(df) <- c("Rank", "Name", "Age", "Wealth", "Country")
df$Year <- 2004
df0 <- merge(df, df0, all = TRUE)

## 2005
df <- read.xlsx("data/forbes/forbes-2005-world-billionaires.xls", 
    sheetName = "Sheet1", header = FALSE, stringsAsFactors = FALSE)
names(df) <- c("Rank", "Name", "Age", "Wealth", "Country")
df$Year <- 2005
df0 <- merge(df, df0, all = TRUE)

## 2006
df <- read.xlsx("data/forbes/forbes-2006-world-billionaires.xls", 
    sheetName = "Sheet1", header = FALSE, stringsAsFactors = FALSE)
names(df) <- c("Rank", "Name", "Country", "Age", "Wealth", "Residence")
df$Year <- 2006
df0 <- merge(df, df0, all = TRUE)

## 2007
df <- read.xlsx("data/forbes/forbes-2007-world-billionaires.xls", 
    sheetName = "Sheet1", header = FALSE, stringsAsFactors = FALSE)
names(df) <- c("Rank", "Name", "Country", "Age", "Wealth", "Residence")
df$Year <- 2007
df0 <- merge(df, df0, all = TRUE)

## 2008
df <- read.xlsx("data/forbes/forbes-2008-world-billionaires.xls", 
    sheetName = "Sheet1", header = FALSE, stringsAsFactors = FALSE)
names(df) <- c("Rank", "Name", "Country", "Age", "Wealth", "Residence")
df$Year <- 2008
df0 <- merge(df, df0, all = TRUE)

## 2009
df <- read.xlsx("data/forbes/forbes-2009-world-billionaires.xls", 
    sheetName = "Sheet1", header = FALSE, stringsAsFactors = FALSE)
names(df) <- c("Rank", "Name", "Country", "Age", "Wealth", "Residence")
df$Year <- 2009
df0 <- merge(df, df0, all = TRUE)

## 2010
df <- read.xlsx("data/forbes/forbes-2010-world-billionaires.xls", 
    sheetName = "Sheet1", header = FALSE, stringsAsFactors = FALSE)
names(df) <- c("Rank", "Name", "Country", "Age", "Wealth", "Residence")
df$Year <- 2010
df0 <- merge(df, df0, all = TRUE)

## 2011
df <- read.xlsx("data/forbes/forbes-2011-world-billionaires.xls", 
    sheetName = "Sheet1", header = FALSE, stringsAsFactors = FALSE)
names(df) <- c("Rank", "Name", "Country", "Age", "Wealth", "Company/Industry")
df$Year <- 2011
df0 <- merge(df, df0, all = TRUE)

## 2012
df <- read.xlsx("data/forbes/forbes-2012-world-billionaires.xls", 
    sheetName = "Sheet1", header = FALSE, stringsAsFactors = FALSE)
names(df) <- c("Rank", "Name", "Country", "Age", "Wealth", "Company/Industry")
df$Year <- 2012
df0 <- merge(df, df0, all = TRUE)

## 2013
df <- read.xlsx("data/forbes/forbes-2013-world-billionaires.xls", 
    sheetName = "Sheet1", header = FALSE, stringsAsFactors = FALSE)
names(df) <- c("Rank", "Name", "Country", "Age", "Wealth", "Company/Industry")
df$Year <- 2013
df0 <- merge(df, df0, all = TRUE)

## 2014
df <- read.xlsx("data/forbes/forbes-2014-world-billionaires.xls", 
    sheetName = "Sheet1", header = FALSE, stringsAsFactors = FALSE)
names(df) <- c("Rank", "Name", "Age", "Wealth", "Country")
df$Year <- 2014
df0 <- merge(df, df0, all = TRUE)

## 2015
df <- read.xlsx("data/forbes/forbes-2015-world-billionaires.xls", 
    sheetName = "Sheet1", header = FALSE, stringsAsFactors = FALSE)
names(df) <- c("Rank", "Name", "Country", "Age", "Wealth", "Company/Industry")
df$Year <- 2015
df <- merge(df, df0, all = TRUE) # reverting to df, not df0

# save first version of dataframe
save(df, file = "data/df1.Rda")

### Step 2. Clean data
setwd("~/piketty/extra/Wealthiest - 2015/")
load("data/df1.Rda")

## Convenience function
## returns string w/o leading or trailing whitespace
trim <- function (x) gsub("^\\s+|\\s+$", "", x)

df$Name <- trim(df$Name)
df$Country <- trim(df$Country)
df$Residence <- trim(df$Residence)
df[,'Company/Industry'] <- trim(df[,'Company/Industry'])
df$Wealth <- as.numeric(df$Wealth)
df$Age <- as.numeric(df$Age)# forces e.g. 55/57 to NA, to be improved

# Create a clean string of names
df1996 <- subset(df, Year == 1996)
Names <- df1996$Name  # surname, name format

# Split Name on comma for Surname / Forename
library(stringr)  # package-dependent
df1996$Surname <- str_match(Names, "^(.*?),\\s*(.*)")[, -1][, 1]
df1996$Forename <- str_match(Names, "^(.*?),\\s*(.*)")[, -1][, 2]

# Fix Surname / Forename where there is no comma to split on
df1996[which(is.na(df1996$Surname)), ]$Surname <- sub("^(\\w+)\\s?(.*)$", "\\1", Names[which(is.na(df1996$Surname))])
df1996[which(is.na(df1996$Forename)), ]$Forename <- sub("^(\\w+)\\s?(.*)$", "\\2", Names[which(is.na(df1996$Forename))])

# Trim white spaces, if any
df1996$Forename <- trim(df1996$Forename)


N <- sort(table(unlist(strsplit(df1996$Surname, ' '))))

# Repeated Surnames --> Children inherited wealth?
Surnames <- df1996$Surname
N <- sort(table(unlist(Surnames)))
N5 <- names(N[N == 5])
N4 <- names(N[N == 4])
N3 <- names(N[N == 3])
N2 <- names(N[N == 2])

# Vectorize gsub
gsub2 <- function(pattern, replacement, x, ...) {
    for(i in 1:length(pattern))
    x <- gsub(pattern[i], replacement[i], x, ...)
    x
}

# Fix names in full database, using the cleaned-up 1996 names
N <- sort(table(unlist(strsplit(Names, ' '))))  # Get Names
# remove non-Names
gsub2(pattern = c("family", "sir", "Jr", "Jr."), 
     replacement = c(""), N, ignore.case = TRUE)


names <- gsub('[[:punct:]]', '', df$Name)
N <- sort(table(unlist(strsplit(names, ' '))))
N <- names(N[N >= 4])

cbind(names, sapply(N, function(x) 
  ifelse(agrepl(x, names, max.distance = 1), x, NA)))


