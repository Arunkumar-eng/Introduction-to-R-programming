# For getting input
{ 
  n = readline(prompt = "Enter a number: ")
  n = as.integer(n)
}
#for printing the output
print(paste("The input value is: ", n))

# Arithmatic operator:
print(4 / 3) #floagint point division
print(4 %/% 3) #Integer division
print(4 %% 3) # To get the remainder
x <- 2 #Assignment operator
2 -> x #this is also possible

#to get the length of the string, USE "nchar("Arun")"
print(nchar("Arun"))
print(nchar(c("Arun", "Jeya")))

# length() -> used to find the length of the vector

print(length("Arun")) # -> this returns 1

# For creating the Vector

v <- 1:6
print(v)
#or
(c(1,2,3))

# Indexing starts with 1
(v[1])
(v[1:3])
(v[c(TRUE, FALSE, TRUE, FALSE, TRUE)]) #To pick the index whose values of TRUE

v
w = 1:2
v - w


#FUNCTIONS

square <- function(x){
  return(x * x)
}
print(square(4))

sum(1:4)

#CONTROL STATEMENTS
x = 4L
y = 5L
if(x > y){
  print("x is greater than y")
}else{
  print("x is lesser than y")
}

#LOOPING STATEMENTS
v
for(i in v){
  print(i)
}

j = 0
while(j < 5){
  print(j)
  j = j + 1
}

print(rep(1:5))
vv <- rep(1:5)
vv

#To append the values into the vector

v = rep(1:5)
v
v <- append(v,6)
v
#Vectors with increament value
w <- seq(1,5,by=0.2)
w

players = c(2,4,5,6,7)

names(players) = c("Footbal", "Vollyball", "Handball", "Basketball", "Table Tennis")
players

cc <- matrix(2:15, 2)
cc
for (r in seq(nrow(cc))){
  for (c in seq(ncol(cc))){
    print(cc[r,c])
  }
  
}

# Introduction to "dplyr"

library(dplyr)
iris %>% tbl_df %>% select("Petal.Width")
iris %>% tbl_df %>% select(starts_with("Petal")) %>% head(4)
# similarly: ends_with, contains, matches, -starts_with(to exclude) 

# Mutate function:

iris %>% tbl_df %>% mutate(Petal_width_plus_Petal_length = Petal.Length + Petal.Width) %>% select(Species, Petal_width_plus_Petal_length) 

# Transmute = Mutate + select

#Arrange: to sort depends on the heading

iris %>% arrange(Petal.Length) %>% head(4)
iris %>% arrange(desc(Sepal.Length)) %>% head(4) #-> to sort it in descending order

# Filter Functions:

iris %>% tbl_df %>% filter(Sepal.Length > 5) %>% head(3)
iris %>% tbl_df %>% filter(Sepal.Length > 5 & Species == "virginica") %>% select(Species, Sepal.Length) %>% head(3)


