library(dplyr)

## Read activity labels:
activity_labels <- read.table(file="UCI HAR Dataset/activity_labels.txt", sep = "", stringsAsFactors = FALSE)

## Read features:
features <- read.table(file = "UCI HAR Dataset/features.txt", sep="", stringsAsFactors = FALSE)


## Read train tables:
x_train <- read.table(file = "UCI HAR Dataset/train/X_train.txt", sep = "", stringsAsFactors = FALSE, col.names = features$V2)
y_train <- read.table(file = "UCI HAR Dataset/train/y_train.txt", sep = "", stringsAsFactors = FALSE, col.names = "label")
subject_train <- read.table(file = "UCI HAR Dataset/train/subject_train.txt", sep = "", stringsAsFactors = FALSE, col.names = "subject")


## Read test tables:
x_test <- read.table(file = "UCI HAR Dataset/test/X_test.txt", sep = "", stringsAsFactors = FALSE, col.names = features$V2)
y_test <- read.table(file = "UCI HAR Dataset/test/y_test.txt", sep = "", stringsAsFactors = FALSE, col.names = "label")
subject_test <- read.table(file = "UCI HAR Dataset/test/subject_test.txt", sep = "", stringsAsFactors = FALSE, col.names = "subject")

## Create complete Data for train:
trainData <- cbind(subject_train, y_train, x_train)


## Create complete Data for test:
testData <- cbind(subject_test, y_test, x_test)


## 1. Merges the training and the test sets to create one data set.
completeData <- rbind(trainData, testData)
completeData <- tbl_df(completeData)

## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
completeData <- completeData[,grepl("mean()|std()", names(completeData)) | names(completeData)=="subject" | names(completeData)=="label"]
completeData <- completeData[,!grepl("Freq", names(completeData))]

## 3. Uses descriptive activity names to name the activities in the data set.
completeData$label <- factor(completeData$label, labels = as.character(activity_labels$V2))


## 4. Appropriately labels the data set with descriptive variable names.
## * Already labeled with descriptive variable names from the col.names = features$V2 command in
##   read.table for both xtrain and xtest.


## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
compAVG <- completeData %>% group_by(label, subject) %>% summarise_each(funs(mean))
write.table(compAVG, file = "UCI HAR Dataset/tidydata.txt", row.names = FALSE, col.names = TRUE)


