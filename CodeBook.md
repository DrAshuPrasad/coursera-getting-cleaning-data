---
title: "CodeBook"
author: "Ashutosh Prasad"
date: "Sunday, October 26, 2014"
output: html_document
---

The dataset for this project is sourced from UCI Machine Learning Repository. More information about it is available at the url given in the assignment: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones .

The given data was train data and test data. From files under train directory was created train dataset. From files under test directory, test dataset was created.

With the help of features.txt file, corresponding variables related to mean and standard deviation were identified. Measurements related only to mean and std were extracted, and then the test and train datasets were merged into one file. This file is combined.dat.

The combined.dat file was then ordered, and its activity codes were replaced with descriptive activity names. A second dataset with the average of each variable for each activity and each subject was created. This file is named summary.ordered.dat.

The final file was used to create a tidy dataset, viz. tidyHARdata.txt, which is a tab separated text file. The file is uploaded.