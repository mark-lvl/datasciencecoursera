corr <- function(directory, threshold = 0){
    corr_holder <- c()
    for(i in 1:332){
        df <- read.csv(file.path(directory, paste(sprintf("%03d",i), '.csv', sep = '')))
        adequate_full_data <- dim(df[!is.na(df$sulfate) & !is.na(df$nitrate),])[1]
        if (adequate_full_data > threshold) {
            full_data <- df[!is.na(df$sulfate) & !is.na(df$nitrate),]
            corr_holder <- c(corr_holder, cor(full_data$sulfate, full_data$nitrate))
        }
    }
    corr_holder
}