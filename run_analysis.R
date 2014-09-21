rawDataDirName<-"C:\\projects\\CleanDataAssignment\\DownloadedData"
outputDataDirName<-"C:\\projects\\CleanDataAssignment"

setwd(rawDataDirName)

# Read the features.txt file, which lists the variables in the X dataset
# We can skip the first column of the features definition file, it is just the row (feature) number
features<-read.table("features.txt", header=FALSE,colClasses=c("NULL","character"))

# Extract only measurements on the mean and standard deviation for each measurement 
keep<-grepl("mean",features$V2) | grepl("std",features$V2)

# Read the test and training set. Label the data sets with descriptive variable names
testX<-read.table("test\\X_test.txt", header=FALSE, col.names=features$V2)
testY<-read.table("test\\y_test.txt", header=FALSE, col.names=c("Activity"))
testS<-read.table("test\\subject_test.txt", header=FALSE, col.names=c("Subject"))

testXKeep <- testX[,keep]
test<-cbind(testY,testS,testXKeep)

trainX<-read.table("train\\X_train.txt", header=FALSE, col.names=features$V2)
trainY<-read.table("train\\y_train.txt", header=FALSE, col.names=c("Activity"))
trainS<-read.table("train\\subject_train.txt", header=FALSE,col.names=c("Subject"))

trainXKeep <- trainX[,keep]
train<-cbind(trainY,trainS,trainXKeep)

# merge the training and test data sets to create one data set
allData<-rbind(train,test)

# use descriptive variable names to name the activities in the data set
activities<-read.table("activity_labels.txt",header=FALSE, colClasses=c("NULL","character"),col.names=c(NA,"Activity"))
allData$Activity<-activities$Activity[ allData$Activity ]


# Create a second independent tidy data set with the average of each variable 
# for each activity and subject
means<-aggregate(.~Activity+Subject,allData,mean)
meansNames<-names(means)
nNames<-length(meansNames)
for(i in 3:nNames) meansNames[i]<-paste("AVERAGE",meansNames[i],sep="")
names(means) <- meansNames

# save the summary means data set in the output directory
setwd(outputDataDirName)
write.table(means,file="ActivitySubjectMeans.txt",row.names=FALSE)




