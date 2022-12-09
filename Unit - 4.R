#Introduction to Classes and Objects

# S3 classes

stud <- list(Name = "Arun", age = 20, GPA = 8.5)

class(stud) <- "students"
stud
print(stud)

# Constructors to create the objects

students <- function(n,a,g){
  value <- list(name = n, age = a, GPA = g);
  attr(value, "class") <- "students"
  value
}

stud <- students("Jeya", 19, 8.4)
students
stud
s


#Writing a generic functions: 


Arun.students <- function(obj){
  print(paste("Your name is : ", obj$name))
  print(paste("your age is : ", obj$age))
  print(paste("Your GPA is : ", obj$GPA))
}

Arun.students(stud)


# Inheritance in S3 classes: -> c(child, parent)

s <- list(name = "Satheesh", age = 18, GPA = 9.3, country = "London")
class(s) <- c("InternationalStudent", "students")
s
# S4 Classes

setClass("student", slots = list(name = "character", age = "numeric", GPA = "numeric"))
s <- new("student", name = "Jeya", age = 19, GPA = 8.4)
s
s@name
s@age
s@GPA
s@GPA <- 8.5
s@GPA
slot(s,"name")


# Generic functions for S4 classes

setMethod("show", "student", function(object){
  print(paste("Your name is: ", object@name))
  print(paste("Your age is : ", object@age))
  print(paste("Your GP is: ", object@GPA))
})

show(s)

# Inheritance in S4 Classes: -> use "contain" keyword

setClass("InternationalStudents", slots = list( country = "character"), contains = "student")
ss <- new("InternationalStudents", name = "Arun", age = 20, GPA = 8.5, country = "Canada")
ss


