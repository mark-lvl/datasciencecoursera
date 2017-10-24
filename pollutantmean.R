pollutantmean <- function(directory, pollutant, id = 1:332) {
    DF <- c()
    for(i in id){
        df <- read.csv(file.path(directory, paste(sprintf("%03d",i), '.csv', sep = '')))
        DF <- rbind(df, DF)
    }
    mean(DF[[pollutant]], na.rm = TRUE)
}