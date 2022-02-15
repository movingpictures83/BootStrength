#rm(list = ls())

library(bnlearn)
#setwd("D:\\FIU\\Causal Network Inference in Cancer") # This is input folder, input and output file will be in this directory


input <- function(inputfile) {
dff <<- read.csv(inputfile)
}

run <- function() {
dff <<- dff[,-1]
dades <- lapply(dff, as.numeric)
bn_df <- data.frame(dades)
bn_df <- na.omit(bn_df)
##########################################################################################
#### Boot Strength
# Input: asv.transpose.norm.csv
# Output: boot_strength.csv
temp_dat <- na.omit(bn_df)
print("RUNNING BOOT STRENGTH")
boot_strength <<- boot.strength(temp_dat, R = 1, algorithm = "pc.stable") #Change bootstrap
}

output <- function(outputfile) {
write.csv(boot_strength,outputfile,row.names=F)
##########################################################################################
}
