### Install packages:
## library("devtools")
## install_github(c("ramnathv/slidify", "ramnathv/slidifyLibraries"), ref = "dev")


### Load packages:
library("slidify")
library("slidifyLibraries")

### Set directory
if(.Platform$OS.type == "windows"){
  setwd("c:/piketty/slidify")
} else { 
  setwd("~/piketty/slidify") 
}

### Make main course page with slidify()
slidify('index.Rmd')

### Make supplementary pages with slidify()
slidify('start.Rmd')

### Make all figures with slidify()
slidify('figures.Rmd')


### Make individual chapter slides with slidify()
## BUG! May 2015! fixed in January 2016
## https://github.com/ramnathv/slidify/issues/407
## devtools::install_github("ramnathv/slidify")
library("slidify")
library("slidifyLibraries")
setwd("~/piketty/slidify/lectures/Chapter 16") 
slidify('index.Rmd')

### Make test slides with slidify()
library("slidify")
library("slidifyLibraries")
setwd("~/piketty/slidify/tests/Chapter 02") 
slidify('index.Rmd')

### Make more test slides with slidify()
library("slidify")
library("slidifyLibraries")
setwd("/Volumes/Docs/StudyPlace/StudyPlace - Selection/Current/2015B_LBA215/TESTS/Tests2016/Test4")
slidify("2016-04-12.Rmd")

### mode selfcontained
# Default is standalone in which case all images are embedded in the html, and js/css assets are served from an online repository. Setting it to selfcontained links everything from your slide folder, so you should be able to copy your slide folder to another computer and present even when offline.