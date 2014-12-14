library(plyr)

# Loads and cleans data according to received paths and lookups
# dataPath - path to observation file
# subjectPath - path to subject observation file
# activitiesPath - path to activities observation file
# columnNames - column names lookup frame(index, name)
# activitiesLabels - activities lookup frame (index, activity)
mapSet <- function(dataPath, subjectPath, activitiesPath, columnNames, activitiesLabels) {
    # read data
    data = read.table(dataPath)
    
    # name columns
    colnames(data) = columnNames[,2]
    
    # prune data leaving only mean and std,
    data <-  data[grep("*mean\\(\\)|std*", columnNames[,2])]
    
    # rename columns, removing illegal characters
    omittedNames = sub("-mean\\(\\)-|-mean\\(\\)", "Mean", names(data))    
    names(data) = sub("-std\\(\\)-|-std\\(\\)", "Std", omittedNames)
    
    # add subjects column
    subjects = read.table(subjectPath)
    data$subjects = subjects[,1]
    
    # add activities column
    activities = read.table(activitiesPath)    
    fullActivities = merge(activities, activitiesLabels, all=TRUE, sort=FALSE)
    data$activities = fullActivities[,2]
    
    data
}

# Loads and cleans data according to received paths and lookups
mapData <- function() {
    features = read.table("UCI HAR Dataset/features.txt")
    activities = read.table("UCI HAR Dataset/activity_labels.txt")
    
    # load train data
    base = "UCI HAR Dataset/train/"
    train = mapSet(paste(base, "X_train.txt", sep = ''), paste(base, "subject_train.txt", sep = ''), paste(base, "y_train.txt", sep = ''), features, activities)
    
    # load test data
    base = "UCI HAR Dataset/test/"
    test = mapSet(paste(base, "X_test.txt", sep = ''), paste(base, "subject_test.txt", sep = ''), paste(base, "y_test.txt", sep = ''), features, activities)
    
    # concat the sets
    rbind(train, test)
}

# Stores a dataset with calculated average of each variable for each activity and each subject
prepareResults <- function(path = "data.txt") {
    data = mapData()    
    ddply(data,.(activities, subjects),numcolwise(mean))
    write.table(data, path, row.name=FALSE)
}