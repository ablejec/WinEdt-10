cmds <- commandArgs(TRUE)
filename <- cmds[1]
#
message(filename)
inputFile <- sub("\\.Rnw$", ".pdf", filename, ignore.case = TRUE)
message(inputFile)
if( file.exists("_outputFile.R") ){
source("_outputFile.R")
message("Copying ",inputFile, " to ", outputFile, "...")
OK <- file.copy(inputFile,outputFile,overwrite=TRUE)
if(OK)
message("Output copied to ",outputFile)
#
message("Patching DVI")
library(patchDVI)
message(patchSynctex(sub("\\.Rnw$", ".synctex", filename, ignore.case = TRUE)))
#dir(pattern=outputFile)
}