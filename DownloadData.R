#Download file to ./data directory

filePath <- "./data/exdata%2Fdata%2FNEI_data.zip"

if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
download.file(fileUrl,destfile="./data/Dataset.zip",method="curl")

# unzip the file.
unzip(zipfile="./data/Dataset.zip",exdir="./data")