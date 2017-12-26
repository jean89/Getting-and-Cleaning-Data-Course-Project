#download the zipped file
###############################################################################################################
zipname <- "project.zip"
if(!file.exists(zipname)){
        fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(fileUrl, zipname, method = "curl")
}

#unzip the file 
###############################################################################################################
if(!file.exists("UCI HAR Dataset")){
        unzip(zipname)
}

#load the features data 
###############################################################################################################
features <- read.table("UCI HAR Dataset/features.txt")


#load the train data 
###############################################################################################################
trainDatax <- read.table("UCI HAR Dataset/train/X_train.txt")
trainDatay <- read.table("UCI HAR Dataset/train/y_train.txt")
trainsub<- read.table("UCI HAR Dataset/train/subject_train.txt")


#load the test data
###############################################################################################################
testDatax <- read.table("UCI HAR Dataset/test/X_test.txt")
testDatay <- read.table("UCI HAR Dataset/test/y_test.txt")
testsub<- read.table("UCI HAR Dataset/test/subject_test.txt")


#merge test and train data, rename the data 
###############################################################################################################
Datax <- rbind(trainDatax, testDatax)
names(Datax) <- features[,2]
Datay <- rbind(trainDatay, testDatay)
names(Datay) <- c("activity")
Datasub <- rbind(trainsub, testsub)
names(Datasub) <- c("subject")

allData <- cbind(Datax, Datay, Datasub)

#Extracts only the measurements on the mean and standard deviation for each measurement.
###############################################################################################################
selectData <- allData[,c(grep("mean|std", names(Datax), value = TRUE), "activity", "subject")]

#Uses descriptive activity names to name the activities in the data set
###############################################################################################################
act_names <- read.table("UCI HAR Dataset/activity_labels.txt")

selectData$activity <- factor(selectData$activity, levels= act_names[,1], labels = act_names[,2])

#Appropriately labels the data set with descriptive variable names
###############################################################################################################
names(selectData) <- gsub("^t", "time", names(selectData))
names(selectData) <- gsub("^f", "frequency", names(selectData))
names(selectData) <- gsub("Acc", "Accelerometer", names(selectData))
names(selectData) <- gsub("Gyro", "Gyroscope", names(selectData))
names(selectData) <- gsub("Mag", "Magnitude", names(selectData))
names(selectData) <- gsub("BodyBody", "Body", names(selectData))

#creates a second, independent tidy data set with the average of each variable for each activity and each subject
###############################################################################################################
data2 <- aggregate(. ~ activity + subject, selectData, mean)
data2 <- arrange(data2, data2$activity, data2$subject)
write.table(data2, file = "tidydata.txt", row.name = FALSE)
