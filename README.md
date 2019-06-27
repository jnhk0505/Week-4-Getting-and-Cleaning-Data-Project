---
title: " Week 4 Getting and Cleaning Data Project ReadMe"
author: "June Kieu"
date: "June 27, 2019"

---

# Project Purpose

The purpose of this project is to demonstrate what I have learned on collecting, working with, and cleaning a data set. The goal is to prepare tidy data that can be used for later analysis.

## Getting Started

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### Steps to process

* First, download and unzip the data file.
* Second, copy *run_analysis.R* to your own machine.
* Finally, execute *run_analysis.R* to generate final tidy data file.

### Required Packages

```
sqldf, dplyr
```
## run_analysis.R should do the following:

1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement.
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive variable names.
5. Create a second, independent tidy data set with the average of each variable for each activity and each subject.
