### 1) Merge the training and test sets to create one data set
x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")

test <- cbind(subject_test, y_test, x_test)
train <- cbind(subject_train, y_train, x_train)
alldata <- rbind(test, train)

###2) Extracts only the measurements on the mean and standard deviation for each measurement.
features <- read.table("features.txt")
mean_std_features <- grep("-(mean|std)\\(\\)", features[, 2])
mean_std_data <- cbind(alldata[,1:2],alldata[,mean_std_features+2])

###3) Use descriptive activity names to name the activities in the data set
activities <- read.table("activity_labels.txt")
mean_std_data <- cbind(mean_std_data[,1:2],activities[mean_std_data[, 2], 2],mean_std_data[,3:68])

###4)Appropriately labels the data set with descriptive variable names
names(mean_std_data)<-c("subject","activity_id","activity",as.character(features[mean_std_features, 2]))

###5)Create a second, independent tidy data set with the average of each variable
average_data <- aggregate(mean_std_data[,4:69],by=list(subject=mean_std_data$subject,activity=mean_std_data$activity),mean)

write.table(average_data, "tidy_data.txt", row.names = FALSE, quote = FALSE)