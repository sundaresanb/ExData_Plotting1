data <- read.table(file = "household_power_consumption.txt", sep = ";",
                   skip = 66637,nrows = 2880)
days <- strptime(paste(data$V1, data$V2), format='%d/%m/%Y %H:%M:%S')
plot(days, data$V3, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.copy(png, 'plot2.png')
dev.off()