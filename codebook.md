# Codebook for Getting and Cleaning Data Course Project

The run_analysis code followig the requirement of the Getting and Cleaning Data Course Project.
```
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
```
## Variables
- zipname: name of dowload zipped file 
- features: feature data from features.txt
- trainDatax: data from train/X_train.txt
- trainDatay: activity data from train/y_train.txt
- trainsub: subject data from train/subject_train.txt
- testDatax: data from test/X_test.txt
- testDatay: activity data from test/y_test.txt
- testsub: subject data from test/subject_test.txt
- Datax,Datay,Datasub contain combined data of test and training 
- alldata:combinedd ata 
- selectData: only the measurements on the mean and standard deviation for each measurement.
- data2: tidy data set with the average of each variable for each activity and each subject.

## Steps
1. download the zipped file, named as zipname
2. unzip the file in the working directory
3. load the features data into features
4. load the train data into trainDatax,trainDatay,trainsub
5. load the test data into testDatax,testDatay,testsub
6. merge test and train data(Datax,Datay, Datasub), and name the columns names(Datay) <- c("activity"),names(Datasub) <- c("subject")
7. combine the test and train data as allData
8. Extracts only the measurements on the mean and standard deviation for each measurement.
9. Uses descriptive activity names to name the activities in the data set
10. Appropriately labels the data set with descriptive variable names
11. creates a second, independent tidy data set with the average of each variable for each activity and each subject
12. write out the tidy data
