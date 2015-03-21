library('plyr')

train.subject <- read.table("./train/subject_train.txt")
train.x <- read.table('./train/X_train.txt')
train.y <- read.table('./train/y_train.txt')

test.subject <- read.table("./test/subject_test.txt")
test.x <- read.table('./test/X_test.txt')
test.y <- read.table('./test/y_test.txt')

features <- read.table('features.txt')
activity.labels <- read.table("./activity_labels.txt")

#Merges the training and the test sets to create one data set.
result.x       <- rbind(train.x, test.x)
result.subject <- rbind(train.subject, test.subject)
result.y       <-rbind(train.y,test.y)

#Appropriately labels the data set with descriptive variable names and 
#Extracts only the measurements on the mean and standard deviation for each measurement
names(result.x) <- features$V2
meanColumns <-grep("mean()",names(result.x),fixed=TRUE)
stdColumns  <-grep("std()",names(result.x),fixed=TRUE)
result.x <- result.x[,c(meanColumns,stdColumns)]

#Uses descriptive activity names to name the activities in the data set
result.activity <- merge(result.y, activity.labels, by=1)[2]
names(result.activity) <- c('activity')
names(result.subject)  <- c('subject')
result.all <- cbind(result.subject, result.activity, result.x)


means <- ddply(result.all, .(subject, activity), function(x) colMeans(x[,3:ncol(x)]))

write.table(means, file="./tidy_data_output.txt")


