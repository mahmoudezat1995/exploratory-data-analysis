library(data.table)

        setwd("C:/Users/mahmoud/Documents/R_data")
        
        all_data <- data.table::fread(input = "household_power_consumption.txt" ,na.strings = "?")
        
        all_data$Date <-as.Date(all_data$Date ,format = "%d/%m/%Y")

        all_data <- all_data[(Date >= "2007-02-01") & (Date <= "2007-02-02")]
        
        png("plot1.png", width=480, height=480)
        
        hist(all_data$Global_active_power ,col = "red",
        main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
        
        dev.off()


