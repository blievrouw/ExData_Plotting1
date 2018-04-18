#
# Reconstruct plot 1
#

source("read_data.R")

# Open file device
png(filename = "plot1.png", width = 480, height = 480)

# Create histogram of global active power
hist(electricity_df$global_active_power, main="Global Active Power", col="red", xlab = "Global Active Power (kilowatts)")

dev.off()