## Streamflow_01_DownloadData.R

library(dataRetrieval)

# set site code
usgs_id <- "07141220"

# download data
data <- readNWISdv(siteNumbers = usgs_id, parameterCd = "00060")

# save data
write.csv(data, file.path("data", "Streamflow.csv"))
#write.csv(data, "data/Streamflow.csv")