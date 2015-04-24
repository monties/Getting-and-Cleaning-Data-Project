# Getting-and-Cleaning-Data-Project
This is a repository for the process of cleaning the data of Human-Active-Recognition-Using-Smartphones project

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data originally comes from UCI smartphone project using the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

    http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here I put are:

### 1) run_analysis:
The R script which follows the steps dealing with raw experimental data set.

1. Merging training and test sets to create one data set.
2. Extracting only the measurements on the mean and standard deviation for each measurement. 
3. Naming the activities in the data set
4. Labeling the data set with descriptive variable names. 
5. From the data set in step 4, creating the tidy data set with the average of each variable for each activity and each subject.

### 2) CodeBook:
The code book of the output -- the tidy data set with the average of each variable for each activity and each subject.
It describes the background of this experiment, the meanings of each singnal record, and the variables of the final data set.

### Data License
Use of the raw dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
