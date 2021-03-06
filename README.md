# Getting-and-Cleaning-Data-Course-Project
This is a Getting and Cleaning Data Course Project. The purpose of this project is to collect, clean the dataset collected from the accelerometers from the Samsung Galaxy S smartphone. 

The full description can be obtained here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
and the data for the project can be found here:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This repository contains the following files :
```
README.md: overview the whole project
codebook.md: variables and summaries calculated
run_analysis.R: R script used to clean and work with the data
tidydata.txt: cleaned data
```

## Description of the data 
>The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

>The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Requirement of the project
>Merges the training and the test sets to create one data set.
>Extracts only the measurements on the mean and standard deviation for each measurement.
>Uses descriptive activity names to name the activities in the data set
>Appropriately labels the data set with descriptive variable names.
>From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Workflow
1. Download the zipped file using the URL provided.
2. Unzip the folder
3. Read the data(activity_labels.txt, features.txt, X_test.txt etc.) and clean the data following the requirement of the project.
4. write out the tidy data. 

## Run the script
To run the script, you need to install and load dplyr package. After running the run_analysis.R, you'll get tidydata.txt in your working directory. tidydata.txt contains the average of each variable for each activity and each subject.


