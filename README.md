---
title: "README"
author: "Ashutosh Prasad"
date: "Sunday, October 26, 2014"
output: html_document
---

GETTING AND CLEANING DATA PROJECT

As per the requirement, the following files are submitted:
    1) a tidy data set tidyHARdata.txt,
    2) a code book called CodeBook.md,
    3) a README.md, and
    4) script run_analysis.R.

The script run_analysis.R processes data about 30 participants in an experiment involving six activities. The captured data was split into two - training data and test data. This R script downloads data from the url provided in the assignment, and then processes it. The script merges the two datasets into one. The final dataset has the following characteristics:
(i) It contains training data as well as test data.
(ii) It has extracted data only related to mean and standard deviation for each measurement.
(iii) It has descriptive names for the activities, instead of activity code in orginal datasets.
(iv) It labels the datasets appropriately.
(v) It creates a tidy dataset viz. tidyHARdata.txt. The tidy data set is uploaded.


This script was executed under the following conditions:
    (a) It had access to getdata_projectfiles_UCI HAR Dataset.zip file under "C:/largedata" directory.
    (b) The operating system used was Windows.
    (c) It works under the directories "C:/largedata", and had privilege to create directories underneath it.
