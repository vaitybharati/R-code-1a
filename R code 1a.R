2 + 2 # control + enter  or control + R
# works as calculator

1:50 # print numbers 1 to 50 to the console

50:1 # print numbers 50 to 1 in reverse order to console

print ("Hello World!")

# ctrl + L is going to clear the console

x <- 1:5 # assigning numbers 1 to 5 to the object x
x

y <- c(3, 5, 8, 1, 2) # alt + '-' is the shortcut for assignment operator
y

a <- x + y
a

z <- 4:9
z

x + z

p <- 4:8
p

x + p

x * 2

ls()  # list objects
#packages are a collection of R functions
install.packages("XML")
install.packages("XML", repos = "http://www.omegahat.net/R")
library(XML)

version

mba <- read.csv("C:\\Users\\welcome\\Documents\\ExcelR\\Day 05 Basic Stat _ R\\Data Sets\\mba.csv") # load csv file into R


?read.csv

View(mba) # show the dataset uploaded to R

getwd() # shows the current working directory

setwd("C:\\Users\\welcome\\Documents\\ExcelR\\Day 05 Basic Stat _ R\\Data Sets\\") # set a working directory of your choice

str(mba) # quick overview of the variables & dataset

# update.packages()

install.packages("RCurl")
library(RCurl)
data2 <- getURL("https://www.excelr.com")
#data2
browseURL("http://ftp.iitm.ac.in/cran/")


library()
install.packages("xlsx")
# Loading the library of xlsx
library(xlsx)
?require
require(xlsx)

library(help = "xlsx") # it'll open a tab with the help documentation

#Long form of your documentation for the respective pacakages
vignette(package="xlsx")
# Loading the long form of documentation through browser.
browseVignettes(package="xlsx")

vignette()

browseVignettes()

rm(list=ls())

#======================================================================

# vector

temp <- c(38, 32, 34, 38, 40) 
#(38+32+34+38+40)/5
#Overall average for the defined dataset provided in the function
mean(1,2,3,4,5)
# middle value of the dataset
median(temp)

x <- c(1, 2, 3, 4, 5)
x
mean(x)

a <- c(1,2,5.3,6,-2,4) # numeric vector
a
b <- c("YES","OK","FINE") # character vector
b
c <- c(TRUE,TRUE,TRUE,FALSE,TRUE,FALSE) #logical vector
c

typeof(x)

#======================================================================
# List An ordered collection of objects
#Loading the value in local variable using
rain <- list('Y', 'N', 'N', 'Y', 'Y')
typeof(rain)
class(rain)
temp <- list(38, 32, 34, 38, 40)
rain
temp

#======================================================================
#Array
array(1:3, c(2,4,2))
b <- array(1:30, c(5, 3, 4))
a
b
#1:4

# another example
cells <- c(1,26,24,68)
rnames <- c("R1", "R2")
cnames <- c("C1", "C2")
mymatrix <- matrix(cells, nrow=2, ncol=2, byrow=TRUE,
                   dimnames=list(rnames, cnames))
mymatrix

#======================================================================
# matrix
temp <- c(38, 32, 34, 38, 40)
str(temp)
#Priority goes to char then number
percp <- c(110, 102, 103, 117, 90,'Y')
str(percp)

percp <- c(110, 102, 103, 117, 90)
mat = matrix(c(temp, percp), nrow=2, byrow=T)
mat[,4] # 4th column of matrix

#======================================================================

#DataFrame contains different columns can have different modes (numeric, character)
temperptrain <- data.frame(temp = c(38, 32, 34, 38, 40), 
                           percp=c(110, 102, 103, 117, 90), 
                           rain=c('Y', 'N', 'N', 'Y', 'Y'))
typeof(temperptrain)
class(temperptrain)

temperptrain
View(temperptrain)

#======================================================================
#An ordered collection of objects
w <- list(name="ExcelR", mynumbers=temp, mymatrix=rain, age=5.3)
w$age
w$mymatrix
# example of a list containing two lists
v <- c(list1,list2)

raintemp <- list(rain, temp)
raintemp
# for viewing the dataset along with it's type
str(raintemp)

#======================================================================
#user defined function
cube <- function(x){x*x*x}
a <- cube(2)
#Print cube root form the value
a
cube(1:4) 

#in-built functions
a <- seq(1, 0, -0.1)
a

seq(1, 0, -0.1)

seq(10, 0, -1)

str(seq)



#======================================================================
#to View built in DAtabases in R
data()
data("EuStockMarkets")
View(EuStockMarkets)
?EuStockMarkets
