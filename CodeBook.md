Code Book for Activity Subject Means Data Table
===============================================

The `ActvitySubjectMeans.txt` file contains an R data.table representing
the means of a subset of variables from the [UCI Human Activity
Recognition Using Smartphones Data Set][UCI] summarized by Subject and
Activity.

[UCI]: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

The data.table may be read into R by the statement

`dt<-read.table(file="ActivitySubjectMeans.txt",header=TRUE)`

The data table is comprised of 180 rows (observations) and 81 columns (variables).

The first two columns in the dataset are `Activity` and `Subject`.

`Activity` is a factor variable with 6 levels, specifying the subject's activity :

 - `WALKING`
 - `WALKING_UPSTAIRS`
 - `WALKING_DOWNSTAIRS`
 - `SITTING`
 - `STANDING`
 - `LAYING`

`Subject` is an integer variable in the range 1,2,...30 identifying which
volunteer subject the measurements are for.

The values of `Activity` and `Subject` uniquely identify a row in the dataset.

The remaining 79 columns in the dataset represent mean values for a
sample of variables from the original UCI data set, averaged over
`Activity` and `Subject`. The remaining 79 columns are :

* `AVERAGEtBodyAcc.mean...X`              : Average of the UCI `tBodyAcc.mean...X` Variable
* `AVERAGEtBodyAcc.mean...Y`              : Average of the UCI `tBodyAcc.mean...Y` Variable
* `AVERAGEtBodyAcc.mean...Z`              : Average of the UCI `tBodyAcc.mean...Z` Variable
* `AVERAGEtBodyAcc.std...X`               : Average of the UCI `tBodyAcc.std...X` Variable
* `AVERAGEtBodyAcc.std...Y`               : Average of the UCI `tBodyAcc.std...Y` Variable
* `AVERAGEtBodyAcc.std...Z`               : Average of the UCI `tBodyAcc.std...Z` Variable
* `AVERAGEtGravityAcc.mean...X`           : Average of the UCI `tGravityAcc.mean...X` Variable
* `AVERAGEtGravityAcc.mean...Y`           : Average of the UCI `tGravityAcc.mean...Y` Variable
* `AVERAGEtGravityAcc.mean...Z`           : Average of the UCI `tGravityAcc.mean...Z` Variable
* `AVERAGEtGravityAcc.std...X`            : Average of the UCI `tGravityAcc.std...X` Variable
* `AVERAGEtGravityAcc.std...Y`            : Average of the UCI `tGravityAcc.std...Y` Variable
* `AVERAGEtGravityAcc.std...Z`            : Average of the UCI `tGravityAcc.std...Z` Variable
* `AVERAGEtBodyAccJerk.mean...X`          : Average of the UCI `tBodyAccJerk.mean...X` Variable
* `AVERAGEtBodyAccJerk.mean...Y`          : Average of the UCI `tBodyAccJerk.mean...Y` Variable
* `AVERAGEtBodyAccJerk.mean...Z`          : Average of the UCI `tBodyAccJerk.mean...Z` Variable
* `AVERAGEtBodyAccJerk.std...X`           : Average of the UCI `tBodyAccJerk.std...X` Variable
* `AVERAGEtBodyAccJerk.std...Y`           : Average of the UCI `tBodyAccJerk.std...Y` Variable
* `AVERAGEtBodyAccJerk.std...Z`           : Average of the UCI `tBodyAccJerk.std...Z` Variable
* `AVERAGEtBodyGyro.mean...X`             : Average of the UCI `tBodyGyro.mean...X` Variable
* `AVERAGEtBodyGyro.mean...Y`             : Average of the UCI `tBodyGyro.mean...Y` Variable
* `AVERAGEtBodyGyro.mean...Z`             : Average of the UCI `tBodyGyro.mean...Z` Variable
* `AVERAGEtBodyGyro.std...X`              : Average of the UCI `tBodyGyro.std...X` Variable
* `AVERAGEtBodyGyro.std...Y`              : Average of the UCI `tBodyGyro.std...Y` Variable
* `AVERAGEtBodyGyro.std...Z`              : Average of the UCI `tBodyGyro.std...Z` Variable
* `AVERAGEtBodyGyroJerk.mean...X`         : Average of the UCI `tBodyGyroJerk.mean...X` Variable
* `AVERAGEtBodyGyroJerk.mean...Y`         : Average of the UCI `tBodyGyroJerk.mean...Y` Variable
* `AVERAGEtBodyGyroJerk.mean...Z`         : Average of the UCI `tBodyGyroJerk.mean...Z` Variable
* `AVERAGEtBodyGyroJerk.std...X`          : Average of the UCI `tBodyGyroJerk.std...X` Variable
* `AVERAGEtBodyGyroJerk.std...Y`          : Average of the UCI `tBodyGyroJerk.std...Y` Variable
* `AVERAGEtBodyGyroJerk.std...Z`          : Average of the UCI `tBodyGyroJerk.std...Z` Variable
* `AVERAGEtBodyAccMag.mean..`             : Average of the UCI `tBodyAccMag.mean..` Variable
* `AVERAGEtBodyAccMag.std..`             : Average of the UCI `tBodyAccMag.std..` Variable
* `AVERAGEtGravityAccMag.mean..`          : Average of the UCI `tGravityAccMag.mean..` Variable
* `AVERAGEtGravityAccMag.std.. `          : Average of the UCI `tGravityAccMag.std..` Variable
* `AVERAGEtBodyAccJerkMag.mean.`.         : Average of the UCI `tBodyAccJerkMag.mean..` Variable
* `AVERAGEtBodyAccJerkMag.std..`          : Average of the UCI `tBodyAccJerkMag.std..` Variable
* `AVERAGEtBodyGyroMag.mean..`            : Average of the UCI `tBodyGyroMag.mean..` Variable
* `AVERAGEtBodyGyroMag.std..`             : Average of the UCI `tBodyGyroMag.std..` Variable
* `AVERAGEtBodyGyroJerkMag.mean..`        : Average of the UCI `tBodyGyroJerkMag.mean..` Variable
* `AVERAGEtBodyGyroJerkMag.std.. `        : Average of the UCI `tBodyGyroJerkMag.std..` Variable
* `AVERAGEfBodyAcc.mean...X      `        : Average of the UCI `fBodyAcc.mean...X` Variable
* `AVERAGEfBodyAcc.mean...Y      `        : Average of the UCI `fBodyAcc.mean...Y` Variable
* `AVERAGEfBodyAcc.mean...Z      `        : Average of the UCI `fBodyAcc.mean...Z` Variable
* `AVERAGEfBodyAcc.std...X       `        : Average of the UCI `fBodyAcc.std...X` Variable
* `AVERAGEfBodyAcc.std...Y       `        : Average of the UCI `fBodyAcc.std...Y` Variable
* `AVERAGEfBodyAcc.std...Z       `        : Average of the UCI `fBodyAcc.std...Z` Variable
* `AVERAGEfBodyAcc.meanFreq...X  `        : Average of the UCI `fBodyAcc.meanFreq...X` Variable
* `AVERAGEfBodyAcc.meanFreq...Y  `        : Average of the UCI `fBodyAcc.meanFreq...Y` Variable
* `AVERAGEfBodyAcc.meanFreq...Z  `        : Average of the UCI `fBodyAcc.meanFreq...Z` Variable
* `AVERAGEfBodyAccJerk.mean...X  `        : Average of the UCI `fBodyAccJerk.mean...X` Variable
* `AVERAGEfBodyAccJerk.mean...Y  `        : Average of the UCI `fBodyAccJerk.mean...Y` Variable
* `AVERAGEfBodyAccJerk.mean...Z  `        : Average of the UCI `fBodyAccJerk.mean...Z` Variable
* `AVERAGEfBodyAccJerk.std...X   `        : Average of the UCI `fBodyAccJerk.std...X` Variable
* `AVERAGEfBodyAccJerk.std...Y   `        : Average of the UCI `fBodyAccJerk.std...Y` Variable
* `AVERAGEfBodyAccJerk.std...Z   `        : Average of the UCI `fBodyAccJerk.std...Z` Variable
* `AVERAGEfBodyAccJerk.meanFreq...X`      : Average of the UCI `fBodyAccJerk.meanFreq...X` Variable
* `AVERAGEfBodyAccJerk.meanFreq...Y`      : Average of the UCI `fBodyAccJerk.meanFreq...Y` Variable
* `AVERAGEfBodyAccJerk.meanFreq...Z`      : Average of the UCI `fBodyAccJerk.meanFreq...Z` Variable
* `AVERAGEfBodyGyro.mean...X`             : Average of the UCI `fBodyGyro.mean...X` Variable
* `AVERAGEfBodyGyro.mean...Y`             : Average of the UCI `fBodyGyro.mean...Y` Variable
* `AVERAGEfBodyGyro.mean...Z`             : Average of the UCI `fBodyGyro.mean...Z` Variable
* `AVERAGEfBodyGyro.std...X`              : Average of the UCI `fBodyGyro.std...X` Variable
* `AVERAGEfBodyGyro.std...Y`              : Average of the UCI `fBodyGyro.std...Y` Variable
* `AVERAGEfBodyGyro.std...Z`              : Average of the UCI `fBodyGyro.std...Z` Variable
* `AVERAGEfBodyGyro.meanFreq...X`         : Average of the UCI `fBodyGyro.meanFreq...X` Variable
* `AVERAGEfBodyGyro.meanFreq...Y`         : Average of the UCI `fBodyGyro.meanFreq...Y` Variable
* `AVERAGEfBodyGyro.meanFreq...Z`         : Average of the UCI `fBodyGyro.meanFreq...Z` Variable
* `AVERAGEfBodyAccMag.mean..`             : Average of the UCI `fBodyAccMag.mean..` Variable
* `AVERAGEfBodyAccMag.std..`              : Average of the UCI `fBodyAccMag.std..` Variable
* `AVERAGEfBodyAccMag.meanFreq..`         : Average of the UCI `fBodyAccMag.meanFreq..` Variable
* `AVERAGEfBodyBodyAccJerkMag.mean..`     : Average of the UCI `fBodyBodyAccJerkMag.mean..` Variable
* `AVERAGEfBodyBodyAccJerkMag.std..`      : Average of the UCI `fBodyBodyAccJerkMag.std..` Variable
* `AVERAGEfBodyBodyAccJerkMag.meanFreq..` : Average of the UCI `fBodyBodyAccJerkMag.meanFreq..` Variable
* `AVERAGEfBodyBodyGyroMag.mean..`        : Average of the UCI `fBodyBodyGyroMag.mean..` Variable
* `AVERAGEfBodyBodyGyroMag.std..`         : Average of the UCI `fBodyBodyGyroMag.std..` Variable
* `AVERAGEfBodyBodyGyroMag.meanFreq..`    : Average of the UCI `fBodyBodyGyroMag.meanFreq..` Variable
* `AVERAGEfBodyBodyGyroJerkMag.mean..`    : Average of the UCI `fBodyBodyGyroJerkMag.mean..` Variable
* `AVERAGEfBodyBodyGyroJerkMag.std..`     : Average of the UCI `fBodyBodyGyroJerkMag.std..` Variable
* `AVERAGEfBodyBodyGyroJerkMag.meanFreq..`: Average of the UCI `fBodyBodyGyroJerkMag.meanFreq.`Variable
