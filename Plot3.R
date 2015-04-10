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

## Plot 3

# Plot3 creation
plot(datetime, Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, Sub_metering_2, type="l", col="red")
lines(datetime, Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

# Save options
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()
