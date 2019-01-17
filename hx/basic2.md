Some of R's most basic types to get started are:
  * Decimals values like 4.5 are called numerics.
  * Natural numbers like 4 are called integers. Integers are also numerics.
  * Boolean values (TRUE or FALSE) are called logical.
  * Text (or string) values are called characters.

Assign value use <-.
Modulo use %%.
Check data type use class(X_var)
use the as.*() functions to enforce data to change types

Vector, 1-dim, can hold numeric, char, or logical (allows blended. c(1, 2.3, "vector")); 
create a vector with the combine function c()
numeric_vector[1] will select the first element of the vector numeric_vector
  * Here R vec index starts from 1 not 0.
numeric_vector[c(1,3)] will select the 1st and the 3rd element of the vector numeric_vector
Vector, single var comparison R does an element-wise comparison of each element in the vector c(4,5,6) with the element 5. However, 5 is not a vector of length three. To solve this, R automatically replicates the value 5 to generate a vector of three elements, c(5, 5, 5) and then carries out the element-wise comparison.


We can make use of logical vector to select elements from another vector. For instance, numeric_vector[c(TRUE, FALSE, TRUE)] will select the 1st and the 3rd element from the vector numeric_vector

Matrix is a collection of elements of the same data type (numeric, character, or logical) arranged into a fixed number of rows and columns. matrix(1:9, byrow = TRUE, nrow = 3, ncol = 3)

Factor refers to a statistical data type used to store categorical variables.
Factor() can convert other type to factor type.

Dataframe similar to matrix, but can hold miscellaneous type
Several functions you can use to inspect your dataframe. To name a few
  head: this by default prints the first 6 rows of the dataframe
  * tail: this by default prints the last 6 rows to the console
  * str: this prints the structure of your dataframe
  * dim: this by default prints the dimensions, that is, the number of rows and columns of your dataframe
  * colnames: this prints the names of the columns of your dataframe
Construct a dataframe with the data.frame() function. As arguments, you should provide vectors. 
You can also use the $ operator to select an entire column from a dataframe. For instance, planet_df$planets

A list in R allows you to gather a variety of objects under one name (that is, the name of the list) in an ordered way. These objects can be matrices, vectors, data frames, even other lists, etc. It is not even required that these objects are related to each other. 
Construct a list using the list() function.

dataframeX[1:10,] is selecting top 10 rows and all columns of dataframeX.

Selecting item from a list by index/name

R's reading data func
  * read.table: Reads in tabular data such as txt files
  * read.csv: Read in data from a comma-separated file format
  * readWorksheetFromFile : Reads in an excel worksheet
  * read.spss: Reads in data from .sav SPSS format.

cars<-read.csv("http://s3.amazonaws.com/assets.datacamp.com/course/uva/mtcars_semicolon.csv", sep=';')
This reads in csv in an URL to a dataframe

You can see the levels of a factor variable by using the function levels()
  For categorical type.
To look at a frequency table of the data in R, use the function table().

Change type to factor use function as.factor()
The first argument of barplot() is a vector containing the heights of each bar. 

hist(mtcars$carb, main = "Carburetors",ylim=c(0,20),col="red",xlab="Number of Carburetors")

Normally distributed data is not necessarily a criteria for calculating a confidence interval using a T-distribution.
