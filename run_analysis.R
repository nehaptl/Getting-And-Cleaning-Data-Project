getwd()

library(dplyr)

# Download zip file
if(!file.exists("Data")){
 dir.create("Data")
}

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "./Data/UCIHRADataset.zip")

# unzip zip file containing data if data directory doesn't already exists
uzp <- "./Data/UCIHRADataset.zip"
unzip(uzp, exdir = "./Data")

# Reading X train and test data Files which has feature data:
X_train <- read.table("./Data/UCI HAR Dataset/train/X_train.txt")
X_test <- read.table("./Data/UCI HAR Dataset/test/X_test.txt")

# Reading y train test data which activity details
y_train <- read.table("./Data/UCI HAR Dataset/train/y_train.txt")
y_test <- read.table("./Data/UCI HAR Dataset/test/y_test.txt")

# Reading subject train and test data which has subject details who performed the action
subject_train <- read.table("./Data/UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("./Data/UCI HAR Dataset/test/subject_test.txt")


# Reading activity and feature labels data 
activity <- read.table("./Data/UCI HAR Dataset/activity_labels.txt")
features <- read.table("./Data/UCI HAR Dataset/features.txt")


## 1.Merges the training and the test sets to create one data set.

# Merging Feature data (x train and test)
X_all <- rbind(X_train, X_test)

# Merging Activity details (Y train and test)
y_all <- rbind(y_train,y_test)

#Merging subject details (test and train)
sub_all <- rbind(subject_train,subject_test)

#set the names for each column of all the data
names(X_all) <- features[,2]
names(y_all) <- "ActivityId"
names(sub_all) <- "SubjectId"

View(X_all)
View(y_all)
View(sub_all)
View(features[,2])

# combining all the data into one data
all_data <- cbind(X_all, y_all, sub_all)
View(all_data)



## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
mean_std <- grep("mean\\(\\)|std\\(\\)", features[,2])

mean_std_var <- features[mean_std,2]
View(mean_std_var)
column
newdata <- all_data[,c(as.character(mean_std_var),"ActivityId", "SubjectId")]
View(newdata)


## 3. Uses descriptive activity names to name the activities in the data set
newdata$ActivityId <- activity[newdata$ActivityId,2]


## 4. Appropriately labels the data set with descriptive variable names.

names(newdata) <- gsub("^t","time",names(newdata))

View(names(newdata))

names(newdata) <- gsub("^f", "frequency", names(newdata))
names(newdata) <- gsub("Acc", "Accelerometer", names(newdata))
names(newdata) <- gsub("Gyro", "gyroscope", names(newdata))
names(newdata) <- gsub("BodyBody", "Body", names(newdata))
names(newdata) <- gsub("mean\\(\\)", "Mean", names(newdata))
names(newdata) <- gsub("std\\(\\)", "StandardDeviation", names(newdata))
names(newdata) <- gsub("Mag", "Magnitude", names(newdata))



## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

finaldata <- newdata %>% group_by(SubjectId,ActivityId) %>% summarise_each(funs(mean))

View(finaldata)

names(finaldata)

# Output file "tidy_data.txt" of the finaldata
write.table(finaldata, "tidy_data.txt", row.names = FALSE, quote = FALSE)

