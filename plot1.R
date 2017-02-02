
URL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(URL, destfile = "./RData/powerdata.zip", method = "curl")
unzip("./Rdata/powerdata.zip", exdir = "./Rdata")

testdata <- read.table("./Rdata/household_power_consumption.txt", header = TRUE, sep = ";", skip = 66636, nrows = 2880)

colnames(testdata) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", 
                        "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

testdata$Date <- as.Date(testdata$Date, "%d/%m/%Y")

hist(testdata$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

png("plot1.png")
hist(testdata$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()

