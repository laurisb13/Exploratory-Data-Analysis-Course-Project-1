## Preparatory steps

# Complete data set
setwd("C:/Documents and Settings/Administrador/Mis documentos/Coursera4/Week1/")
datatotal <- read.table("C:/Documents and Settings/Administrador/Mis documentos/Coursera4/Week1/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

# Subset data set
data <- datatotal[datatotal$Date %in% c("1/2/2007","2/2/2007"),]
datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
Global_active_power <- as.numeric(data$Global_active_power)

## Plot 2

# Plot2 creation
plot(datetime, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

# Save options
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
