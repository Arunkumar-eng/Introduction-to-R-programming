#Intro do Data Frames
#Creation of Data Frames
Name <- c("Arun", "Jeya", "Satheesh", "Priya")
gender <- c("male", "female", "male", "female")
marks <- c(90,85,99,98)

class <- data.frame(Name, gender, marks)
class
str(class) #To get the structure of the data Frames
class$Name
m = class$marks
m
sum(m)
#To add new column to the data frame
class$score <- c(1,2,3,4)
class

#To add new row to the data frame

Name <- c("Raja", "Janushika")
gender <- c("male", "female")
marks <- c(94,90)
score <- c(5,6)
new_record = data.frame(Name, gender, marks, score)
new_record
class <- rbind(new_record, class)
class

#To take a transpose of data_frame or matrix
transpose_class = t(class)
transpose_class

print(nrow(transpose_class))


sample <- rbind(Name, marks, score, gender)
sample


# For manipulating "NA" values:

d<- c(1,2,3,4)
e<- c("red", "white", "red", NA)
f<- c(TRUE, TRUE, TRUE, FALSE)
mydata<- data.frame(d,e,f)
mydata
names(mydata)<- c("ID", "Color", "Passed") #variable names

mydata
is.na(e)

temp <- c(1,2,3,4,NA, 7, 8, NA)
mean(temp)
mean(mydata)
mean(temp, na.rm = TRUE)
temp
temp[is.na(temp)] <- 99
temp
mydata

mydata[is.na(mydata)] = 99 #for replacing NA with some number
mydata

t1 <- c(23,5,NA,3,4)
t1
sum(t1)
sum(t1, na.rm = TRUE) # To remove NA and manipulate some data
t1[is.na(t1)] <- 99 # For replacing NA with some specific values
t1

# Switch statements
x <- as.integer(readline(prompt = "Enter the first number: "))
y <- as.integer(readline(prompt = "Enter the second number: "))
ch <- readline("Enter the operation: ")
ans <- switch(ch,
              "+" = x+y,
              "-" = x-y,
              "*" = x * y,
              "/" = x / y
)
print(ans)


# Functions:

add <- function(x,y){
  return(x+y);
}

ans <- add(3L , 4L)
print(ans)

# Recursion:

fact <- function(x){
  if(x == 0){
    return(1)
  }
  return(x * fact(x-1))
}

res = fact(5)
print(res)


# Matrices

A <- matrix(
  
  c(1,2,3,4,5,6,7,8,9),
  nrow = 3, ncol = 3,
  byrow = TRUE
  
)
A
 
# Factors -> To represents the levels (To find the unique values)

fac <- factor(c("Male", "Female", "Female", "Male"))
fac.
0++++

x <- c(3,7, NA, 4,7)
y <- c(5, NA, 1, 2, 2)
x+y



xx <- seq(1,12, by = 0.5)
xx
yy <- rep(1:12,)
yy
