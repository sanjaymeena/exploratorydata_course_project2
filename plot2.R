

# Question 2:
# Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") from 1999 to 2008? Use the base plotting system to make a plot answering this question.

# Read the data file
data_path="./data"
NEI <- readRDS(file.path(data_path,"summarySCC_PM25.rds"))
SCC <- readRDS(file.path(data_path,"Source_Classification_Code.rds"))


baltimore<-subset(NEI, NEI$fips==24510)           #Subset Baltimore area
png("plot2.png")
totalBaltimore<-tapply(baltimore$Emissions, INDEX=baltimore$year, sum)   #Sum emissions per year
barplot(totalBaltimore, main="Total Emissions in Baltimore, MD by Year", xlab="Year", ylab="Emissions")
dev.off()