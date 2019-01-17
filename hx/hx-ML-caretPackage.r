library(caret)
library(dslabs)
data(heights)
y<-heights$sex
x<-heights$height
set.seed(2)
# https://www.rdocumentation.org/packages/caret/versions/6.0-81/topics/createDataPartition
test_index<-createDataPartition(y, times=1, p=.5, list=FALSE)
train_set<-heights[-test_index, ]
test_set<-heights[test_index, ]
# overall accuracy, how many P & N are correctly predicted
# algo1 random guess
# here, %>% is a symbol defined by a package CRAN to pass left hand to right as a param
# factors are variables in R which take on a limited number of different values; 
#   such variables are often refered to as categorical variables
y_hat1<-sample(c("Male", "Female"), length(test_index), replace=TRUE) %>%
    factor(y_hat1, levels=levels(test_set$sex))
heights %>% group_by(sex) %>% summarize(mean(height),sd(height))
print(mean(y_hat1==test_set$sex))
# algo2
y_hat2<-ifelse(x>62,"Male","Female") %>% factor(levels=levels(test_set$sex))
print(mean(y_hat1==test_set$sex))
# optimization
cutoff<-seq(61,70)
accuracy<-map_dbl(cutoff, function(x){
    y_hat3<-ifelse(train_set$height>x, "Male", "Female") %>% factor(levels=levels(test_set$sex))
    mean(y_hat3==train_set$sex)
})
