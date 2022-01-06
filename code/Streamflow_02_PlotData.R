## Streamflow_02_PlotData.R

library(ggplot2)
library(lubridate)

# read in the data
data_in <- read.csv(file.path("data", "Streamflow.csv"))

# plot the data
head(data_in)
ggplot(data_in, aes(x = Date, y = X_00060_00003)) +
  geom_line()

# problem - inspect data
class(data_in$Date) #problem: it's a character
class(data_in$X_00060_00003)

# convert to a date
data_in$Date <- ymd(data_in$Date)
class(data_in$Date)

# now plot the data
p <- 
  ggplot(data_in, aes(x = Date, y = X_00060_00003)) +
  geom_line()

# save our plot
ggsave(file.path("results", "Streamflow.png"), p)
