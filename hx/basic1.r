# Addition, Subtraction, Multiplication, Division, Exponentiation, Modulo
5 + 5, 40-2, 3*2, 4/3, 0^3, 4%%2
# Assign value
x<-42
# The quotation marks indicate that the variable is of type character
my_character<-"some text"
my_character<-"forty-two"
# Change the value of my_logical
my_logical<-TRUE
# var1 is logical; convert it to character: var1_char
var1_char<-as.character(var1)
# See whether var1_char is a character
is.character(var1_char)
# load a library
library(dslabs)
# load a dataset 'heights'
data(heights)
# get the shape of dataset
dim(heights)
# get the summary of a dataset
summary(heights)


# var2 is numeric; convert it to logical: var2_log
var2_log<-as.logical(var2)

# Inspect the class of var2_log
class(var2_log)

numeric_vector<-c(1, 10, 49)
character_vector<-c("a", "b", "c")

# Complete the code for 'boolean_vector'
boolean_vector<-c(TRUE, FALSE, TRUE)

# A numeric vector containing 3 elements
numeric_vector<-c(1, 10, 49)

# a character vector containing 3 elements
character_vector<-c("a", "b", "c")

# Complete the code for 'boolean_vector'
boolean_vector<-c(TRUE, FALSE, TRUE)

character_vector[1]
boolean_vector[c(1, 3)]

# A numeric vector containing 3 elements
numeric_vector<-c(1, 10, 49)
larger_than_ten<-(numeric_vector>10)
larger_than_ten

numeric_vector<-c(1, 10, 49)
larger_than_ten<-numeric_vector > 10
numeric_vector[larger_than_ten[c(TRUE, TRUE, TRUE)]]

# Construction of a matrix with 5 rows that contain the numbers 1 up to 20 and assign it to m
m<-matrix(1:20, byrow=TRUE, 5,4)

# print m to the console
m

# a vector called student_status
student_status<-c("student", "not student", "student", "not student")

# turn student_status into a factor and save it in the variable categorical_student
categorical_student<-factor(student_status)

# print categorical_student to the console
categorical_student

# print mtcars to the console
mtcars

# print the first 6 rows of mtcars
head(mtcars)

# print the structure of mtcars
str(mtcars)

# print the dimensions of mtcars
dim(mtcars)

# planets vector
planets<-c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")

# type vector
type<-c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")

# diameter vector
diameter<-c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)

# rotation vector
rotation<-c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)

# rings vector
rings<-c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# construct a dataframe planet_df from all the above variables
planet_df<-data.frame(planets, type, diameter, rotation, rings)

# select the values in the first row and second and third columns
planet_df[1,c(2,3)]
# select the entire third column
planet_df$diameter

# Vector with numerics from 1 up to 10
my_vector<-1:10 

# Matrix with numerics from 1 up to 9
my_matrix<-matrix(1:9, ncol = 3)

# First 10 elements of the built-in data frame 'mtcars'
my_df<-mtcars[1:10,]

# Construct my_list with these different elements:
my_list<-list(my_vector, my_matrix, my_df)

# print my_list to the console
my_list

# Vector with numerics from 1 up to 10
my_vector<-1:10 

# Matrix with numerics from 1 up to 9
my_matrix<-matrix(1:9, ncol = 3)

# First 10 elements of the built-in data frame 'mtcars'
my_df<-mtcars[1:10,]

# Construct list with these different elements:
my_list<-list(my_vector, my_matrix, my_df)

# Grab the second element of my_list and print it to the console
my_list[[2]]

# Grab the first column of the third component of `my_list` and print it to the console
my_list[[3]][,1]
