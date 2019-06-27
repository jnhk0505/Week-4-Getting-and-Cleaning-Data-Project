## June Kieu
## June 27th 2019
## Getting and Cleaning Data Project

rm(list = ls())
unzip(zipfile="C:/Users/June Kieu/Downloads/getdata_projectfiles_UCI HAR Dataset.zip",exdir="C:/Users/June Kieu/Desktop/Studying R/datasciencecoursera/Week 4 Cleaning Data Project")
path <- file.path("C:/Users/June Kieu/Desktop/Studying R/datasciencecoursera/Week 4 Cleaning Data Project", "UCI HAR Dataset")
?list.files
files <- list.files(path,recursive = TRUE)
#import training set (7352 rows, 561 columns)
xtrain <- read.table(file.path(path,"train","X_train.txt"),header = FALSE)
#import training labels (6 different values)
ytrain <- read.table(file.path(path,"train","y_train.txt"),header = FALSE)
#import testing set (2947 rows, 561 columns)
xtest <- read.table(file.path(path,"test","X_test.txt"),header = FALSE)
#import testing labels (6 different values)
ytest <- read.table(file.path(path,"test","y_test.txt"),header = FALSE)
#subjects in training set
subjecttrain <- read.table(file.path(path,"train","subject_train.txt"),header = FALSE)
#subjects in testing set
subjecttest <- read.table(file.path(path,"test","subject_test.txt"),header = FALSE)
#activity labels
activity_labels <- read.table(file.path(path,"activity_labels.txt"),header = FALSE)
#variables
features <- read.table(file.path(path,"features.txt"),header = FALSE)
### Putting headers: Appropriately labels the data set with descriptive variable names.
colnames(xtrain) <- features[,2]
colnames(ytrain) <- "activityId"
colnames(subjecttrain) <- "subjectId"
colnames(xtest) <- features[,2]
colnames(ytest) <- "activityId"
colnames(subjecttest) <- "subjectId"
colnames(activity_labels) <- c('activityId','activityType')
#Complete train set (7352 rows, 563 columns)
train <- cbind(ytrain,subjecttrain,xtrain)
#Complete test set (2947 rows, 563 columns)
test <- cbind(ytest,subjecttest,xtest)
#Combine train and test (10299 rows, 563 columns)
tv_set <- rbind(train,test)
colnames(tv_set)
#Extracts only the measurements on the mean and standard deviation for each measurement.
selected_columns <-(grepl("activityId",colnames(tv_set))|grepl("subjectId",colnames(tv_set))|grepl("mean",colnames(tv_set))|grepl("std",colnames(tv_set)))
tv_set1 <- tv_set[,selected_columns==TRUE]
#Uses descriptive activity names to name the activities in the data set
require(sqldf)
tv_set2 <- sqldf("select a.activityType,b.* from activity_labels as a left join tv_set1 as b on a.activityId=b.activityId")
##descriptive activity names
tv_names <- colnames(tv_set2)
tv_names <- gsub("-", "", tv_names)
tv_names <- gsub("()-", "", tv_names)
tv_names <- gsub("\\(\\)", "", tv_names)
tv_names <- gsub("^t", "timeDomain", tv_names)
tv_names <- gsub("^f", "frequencyDomain", tv_names)
tv_names <- gsub("Acc", "Accelerometer", tv_names)
tv_names <- gsub("std", "StandardDeviation", tv_names)
tv_names <- gsub("Gyro", "Gyroscope", tv_names)
tv_names <- gsub("Freq", "Frequency", tv_names)
tv_names <- gsub("mean", "Mean", tv_names)
tv_names <- gsub("Mag", "Magnitude", tv_names)
tv_names <- gsub("BodyBody", "Body", tv_names)
colnames(tv_set2) <- tv_names
#Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
require(dplyr)
finalTidySet <- tv_set2 %>%
  group_by(subjectId,activityId,activityType) %>%
  summarise_all("mean")
write.table(finalTidySet, file = file.path(path,"finalTidySet.txt"),row.names = FALSE)
