#Getting and Cleaning Data Week 4 Assignment
################################################################################

#read in training and test sets to RStudio
test  <-read.table("UCI HAR Dataset/test/X_test.txt",stringsAsFactors = TRUE)
train <-read.table("UCI HAR Dataset//X_train.txt",stringsAsFactors = TRUE)

#Merge the training and the test sets to create one data set.
    alldata <- rbind(test,train)

#Extract only the measurements on the mean and standard deviation for each 
#measurement.
    #get variable names for the test and train files
    labels<-read.table("features.txt",stringsAsFactors = TRUE)
    
    #keep only column 2 of the labels table
    labels<-labels[2]
    
    #keep test and train data on means and stds
    alldata2<-alldata[grepl("-[mM]ean\\(\\)|-std\\(\\)",labels[[1]])] 
    
    #keep only headers for means and stds
    labels2<- labels[grepl("-[mM]ean\\(\\)|-std\\(\\)",labels[[1]]),]
    
#Use descriptive activity names to name the activities in the data set
    #remove brackets from labels
    labels2<-sub("\\(\\)","",labels2)
    
    #remove hyphens
    labels2<-sub("-","",labels2)
    labels2<-sub("-","",labels2)
    #change to lower case
    labels2<-tolower(labels2)

#Appropriately label the data set with descriptive variable names.
    names(alldata2)<-labels2
    
#From the data set in step 4, create a second, independent tidy data set with 
#the average of each variable for each activity and each subject.
    averages<-colMeans(alldata2)
    
#export file
    write.table(averages,row.name=FALSE)
    