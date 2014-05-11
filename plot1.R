data <- read.table(file = "household_power_consumption.txt", sep = ";",
                   skip = 66637,nrows = 2880)
hist(data$V3, col = 'Red', main = 'Global Active Power', xlab = 'Global Active Power (kilowatts)', ylab = 'Frequency')
dev.copy(png, 'plot1.png')
dev.off()