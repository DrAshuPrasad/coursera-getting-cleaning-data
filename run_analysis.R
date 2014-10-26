# Getting and Cleaning Data Project

# Download file and capture info
# filetmp<-tempfile();
# download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",filetmp)
# unzip(filetmp, exdir=tempdir())
# setwd(paste(tempdir(), sep="/", "UCI HAR Dataset/"))

setwd("C:/largedata")
unzip("getdata_projectfiles_UCI HAR Dataset.zip")
setwd("UCI HAR Dataset/")
feature<-read.table("features.txt")["V2"]
activity<-read.table("activity_labels.txt")["V2"]
stats<-grep("mean|std",feature$V2)

X_train<-read.table("train/X_train.txt"); names(X_train)<-feature$V2
y_train<-read.table("train/y_train.txt"); names(y_train)<-"Label"
subject_train<-read.table("train/subject_train.txt"); names(subject_train)<-"Subject"

X_test<-read.table("test/X_test.txt"); names(X_test)<-feature$V2
y_test<-read.table("test/y_test.txt"); names(y_test)<-"Label"
subject_test<-read.table("test/subject_test.txt"); names(subject_test)<-"Subject"

setwd("C:/largedata")

# get data related to mean and standard deviation, and merge train and test data sets
X_test.dat<-cbind(subject_test, y_test, subset(X_test, select=colnames(X_test)[stats]))
X_train.dat<-cbind(subject_train, y_train, subset(X_train, select=colnames(X_train)[stats]))
combined.dat<-rbind(X_test.dat, X_train.dat)
# create summary dataset
summary.dat<-aggregate(combined.dat[,3:ncol(combined.dat)], 
                       list(
                           Subject=combined.dat$Subject, 
                           Activity=combined.dat$Label),
                           mean
                       )
# Order the data
summary.ordered.dat<-summary.dat[order(summary.dat$Subject),]

# Replace activity code with descriptive name
summary.ordered.dat$Activity<-activity[summary.ordered.dat$Activity,]

# Write the tidy data as a text file
write.table(summary.ordered.dat, file="./tidyHARdata.txt", sep="\t")
