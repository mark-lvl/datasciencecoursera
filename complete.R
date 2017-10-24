complete <- function(directory, id = 1:332) {
    res <- c()
    for(i in id){
        df <- read.csv(file.path(directory, paste(sprintf("%03d",i), '.csv', sep = '')))
        res <- rbind(res, c('id' = i, 'nobs' = sum(!is.na(df$sulfate) & !is.na(df$nitrate))))
    }
    res
}