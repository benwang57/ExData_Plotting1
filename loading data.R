#use these codes to read the data from 2007-02-01 to 2007-02-02
library(dplyr)
library(lubridate)

#Please update your working directory here.
Main_dir <- "C:/Users/benwa/Documents/R Studio/ExData_Plotting1"
#Define the sub working dirctory to store the data
Sub_dir <- "data"

#set the working directory
dir.create(file.path(Main_dir, Sub_dir), showWarnings = FALSE)
setwd(file.path(Main_dir, Sub_dir))

#Download and unzip the zip, now that we have the data unzipped in a folder called 
Url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(Url, "./data.zip")
unzip(zipfile = "./data.zip")

#read the data
df1 <- read.table(file.path(getwd(), "household_power_consumption.txt"), header = FALSE)

#change the Date format to Date
df1 <- mutate(df1, Date = dmy(Date))

#Subset the date frame to select only 2007-02-01 to 2007-02-02
Main_data <- filter(df1, Date == "2007-02-01"|Date == "2007-02-02")