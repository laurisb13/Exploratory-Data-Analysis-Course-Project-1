## Preparatory steps

# Complete data set
setwd("C:/Documents and Settings/Administrador/Mis documentos/Coursera4/Week1/")
datatotal <- read.table("C:/Documents and Settings/Administrador/Mis documentos/Coursera4/Week1/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

# Subset data set
data <- datatotal[datatotal$Date %in% c("1/2/2007","2/2/2007"),]
datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
Global_active_power <- as.numeric(data$Global_active_power)
Sub_metering_1 <- as.numeric(data$Sub_metering_1)
Sub_metering_2 <- as.numeric(data$Sub_metering_2)
Sub_metering_3 <- as.numeric(data$Sub_metering_3)
Global_reactive_power <- as.numeric(data$Global_reactive_power)
Voltage <- as.numeric(data$Voltage)

## Plot 4

# Plot4 creation
par(mfrow = c(2, 2)) 
plot(datetime, Global_active_power, type="l", xlab="", ylab="Global Active Power", cex=0.2)
plot(datetime, Voltage, type="l", xlab="datetime", ylab="Voltage")
plot(datetime, Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, Sub_metering_2, type="l", col="red")
lines(datetime, Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")
plot(datetime, Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")

# Save options
dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()
