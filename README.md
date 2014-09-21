Getting and Cleaning Data Programming Project
=============================================

run_analysis.R
---------------

`run_analysis.R` is an R script designed to fullfil the requirements of
the Getting and Cleaning Data Programming Project. The script reads raw
data collected from the accelerometers of Samsung Galaxy S smartphones,
and outputs a tidy dataset representing the means of a subset of the
original variables aggregated over the `Subject` and `Activity`variables.

The original data was made available in the [UCI Human Activity
Recognition Using Smartphones Data Set][UCI].

[UCI]: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#


The requirements of the script were specified as follows:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for
   each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data
   set with the average of each variable for each activity and each
   subject.

Each of these steps is clearly commented in the `run_analysis.R` script.

The script assumes the downloaded data is available in a folder whose
name is given in the `rawDataDirName` variable. The summary output data
table is written to a folder specified by the `outputDataDirName`
variable.

The script operates by first reading the `features.txt` file, which
contains descriptions of the variables of the test and training **X**
datasets, and then creating a logical vector of dataset variables to
retain. The three *test* data sets are read in, the **X** measurements,
the **Subject** identifiers and the **Activity** codes. The **X** dataset is
subsetted, keeping only the columns (variables) to be retained. The
three data sets are then column bound together. The process is repeated
for the training data sets, and the resulting frames are row bound. The
numeric Activity code values are replaced by their descriptive values.

A second summary dataset is created representing the means of the
retained X variables broken down by `Subject` and `Activity`. The summary
data set is written to disk.

