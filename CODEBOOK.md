---
title: " Week 4 Getting and Cleaning Data Project CodeBook"
author: "June Kieu"
date: "June 27, 2019"

---

## Project Description
The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

## Study design and data processing

### Data Source
Source data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Description of the dataset from the source website: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

### Notes on the original data 
Please refer to README.TXT, which goes with other data tables for detailed description of original data.

## Creating the tidy datafile

### All Steps are done by *run_analysis.R*:
1. Merges the training and the test sets to create one data set. The combined set is called tv_set. Train set has 7,352 observations and test set has 2,947 observations.   

2. From tv_set in step 1, creates tv_set1 contains only the measurements on the mean and standard deviation for each measurement. This table has 10,299 observations and 79 variables and 2 columns to identify subject and activity (keys).

3. Uses descriptive activity names to name the activities in the data set. The new set with activity names is called tv_set2. This set has 10,299 observations and 82 columns. 

#### Package Required

```
sqldf
```

4. *finalTidySet.txt* is the final independent tidy data set with the average of each variable for each activity and each subject.

#### Package Required

```
dplyr
```
## List of Variables that means are calculated:

### The First 3 are keys to identify subject and activity:

subjectId,
activityId,
activityType,
timeDomainBodyAccelerometerMeanX,
timeDomainBodyAccelerometerMeanY,
timeDomainBodyAccelerometerMeanZ,
timeDomainBodyAccelerometerStandardDeviationX,
timeDomainBodyAccelerometerStandardDeviationY,
timeDomainBodyAccelerometerStandardDeviationZ,
timeDomainGravityAccelerometerMeanX,
timeDomainGravityAccelerometerMeanY,
timeDomainGravityAccelerometerMeanZ,
timeDomainGravityAccelerometerStandardDeviationX,
timeDomainGravityAccelerometerStandardDeviationY,
timeDomainGravityAccelerometerStandardDeviationZ,
timeDomainBodyAccelerometerJerkMeanX,
timeDomainBodyAccelerometerJerkMeanY,
timeDomainBodyAccelerometerJerkMeanZ,
timeDomainBodyAccelerometerJerkStandardDeviationX,
timeDomainBodyAccelerometerJerkStandardDeviationY,
timeDomainBodyAccelerometerJerkStandardDeviationZ,
timeDomainBodyGyroscopeMeanX,
timeDomainBodyGyroscopeMeanY,
timeDomainBodyGyroscopeMeanZ,
timeDomainBodyGyroscopeStandardDeviationX,
timeDomainBodyGyroscopeStandardDeviationY,
timeDomainBodyGyroscopeStandardDeviationZ,
timeDomainBodyGyroscopeJerkMeanX,
timeDomainBodyGyroscopeJerkMeanY,
timeDomainBodyGyroscopeJerkMeanZ,
timeDomainBodyGyroscopeJerkStandardDeviationX,
timeDomainBodyGyroscopeJerkStandardDeviationY,
timeDomainBodyGyroscopeJerkStandardDeviationZ,
timeDomainBodyAccelerometerMagnitudeMean,
timeDomainBodyAccelerometerMagnitudeStandardDeviation,
timeDomainGravityAccelerometerMagnitudeMean,
timeDomainGravityAccelerometerMagnitudeStandardDeviation,
timeDomainBodyAccelerometerJerkMagnitudeMean,
timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation,
timeDomainBodyGyroscopeMagnitudeMean,
timeDomainBodyGyroscopeMagnitudeStandardDeviation,
timeDomainBodyGyroscopeJerkMagnitudeMean,
timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation,
frequencyDomainBodyAccelerometerMeanX,
frequencyDomainBodyAccelerometerMeanY,
frequencyDomainBodyAccelerometerMeanZ,
frequencyDomainBodyAccelerometerStandardDeviationX,
frequencyDomainBodyAccelerometerStandardDeviationY,
frequencyDomainBodyAccelerometerStandardDeviationZ,
frequencyDomainBodyAccelerometerMeanFrequencyX,
frequencyDomainBodyAccelerometerMeanFrequencyY,
frequencyDomainBodyAccelerometerMeanFrequencyZ,
frequencyDomainBodyAccelerometerJerkMeanX,
frequencyDomainBodyAccelerometerJerkMeanY,
frequencyDomainBodyAccelerometerJerkMeanZ,
frequencyDomainBodyAccelerometerJerkStandardDeviationX,
frequencyDomainBodyAccelerometerJerkStandardDeviationY,
frequencyDomainBodyAccelerometerJerkStandardDeviationZ,
frequencyDomainBodyAccelerometerJerkMeanFrequencyX,
frequencyDomainBodyAccelerometerJerkMeanFrequencyY,
frequencyDomainBodyAccelerometerJerkMeanFrequencyZ,
frequencyDomainBodyGyroscopeMeanX,
frequencyDomainBodyGyroscopeMeanY,
frequencyDomainBodyGyroscopeMeanZ,
frequencyDomainBodyGyroscopeStandardDeviationX,
frequencyDomainBodyGyroscopeStandardDeviationY,
frequencyDomainBodyGyroscopeStandardDeviationZ,
frequencyDomainBodyGyroscopeMeanFrequencyX,
frequencyDomainBodyGyroscopeMeanFrequencyY,
frequencyDomainBodyGyroscopeMeanFrequencyZ,
frequencyDomainBodyAccelerometerMagnitudeMean,
frequencyDomainBodyAccelerometerMagnitudeStandardDeviation,
frequencyDomainBodyAccelerometerMagnitudeMeanFrequency,
frequencyDomainBodyAccelerometerJerkMagnitudeMean,
frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation,
frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency,
frequencyDomainBodyGyroscopeMagnitudeMean,
frequencyDomainBodyGyroscopeMagnitudeStandardDeviation,
frequencyDomainBodyGyroscopeMagnitudeMeanFrequency,
frequencyDomainBodyGyroscopeJerkMagnitudeMean,
frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation,
frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency,

