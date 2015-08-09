##load Data and subset
##load Data
datafile<- ("C:/Users/Desktop/Desktop/R Learning/Assignment 1/ExData_Plotting1/household_power_consumption.txt")
data <- read.table(datafile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
##subset
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
##Plot
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep= " "), "%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()