## Preparatory steps

# Complete data set
setwd("C:/Documents and Settings/Administrador/Mis documentos/Coursera4/Week1/")
datatotal <- read.table("C:/Documents and Settings/Administrador/Mis documentos/Coursera4/Week1/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

# Subset data set
data <- datatotal[datatotal$Date %in% c("1/2/2007","2/2/2007"),]
Global_active_power <- as.numeric(data$Global_active_power)

## Plot 1

# Plot1 creation
hist(Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

# Save options
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
