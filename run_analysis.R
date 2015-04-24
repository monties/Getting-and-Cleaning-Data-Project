# read train set
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("./UCI HAR Dataset/train/Y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# read test set
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("./UCI HAR Dataset/test/Y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# read features
features <- read.table("./UCI HAR Dataset/features.txt",stringsAsFactors=FALSE)

# 1. rbind train & test data sets as well as cbind subject & activity
X <- rbind(X_train, X_test)
Y <- rbind(Y_train, Y_test)
subject <- rbind(subject_train, subject_test)
all <- cbind(subject, Y, X)

# 2. extract means and standard deviations for each measurement
m <- grep("mean", features$V2)  # get the indices of columns with "mean"
std <- grep("std", features$V2) # get the indices of columns with "std"
mstd <- sort(c(m,std))       # sort all the indices of wanted columns
DB <- all[,c(1:2, mstd+2)]

# 3. name activities in the data set
DB[,2] <- factor(as.character(DB[,2]), levels = 1:6,
                 labels=c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS",
                          "SITTING","STANDING","LAYING"))

# 4. label the data set with descriptive variable names
names(DB) <- c("Subject", "activity", features[mstd,2])

# 5. creates a second, independent tidy data set with 
#    the average of each variable for each activity and each subject.
library(reshape2)
DBMelt <- melt(DB, id=1:2, measure.vars = 3:81)
AvgDB <- dcast(DBMelt, Subject + activity ~ variable, mean)

# save the tidy data set as .txt file
write.table(AvgDB,
            file = "Tidy data for course project.txt", row.name = FALSE)
