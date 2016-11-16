cmds <- commandArgs(TRUE)
# cmds: file , knit/Sweave , output_file_name , output_file_type , script_path
message(paste(cmds,collapse=" "))
filename <- cmds[1]
print(filename)
if(!is.na(cmds[2])&&cmds[2]=="knit") {
    require(knitr)
    if(!is.na(cmds[4])&&cmds[4]=="HTML"){
    wpath <- gsub("\\\\","/",cmds[5])
    source(paste0(wpath,"Rnw2Rmd.R"))
    t <- readLines(filename)
    if(tolower(rev(strsplit(lfn,"\\.")[[1]])[1]=="rnw")) { x <- Rnw2Rmd(t) 
#    x <- iconv(x,"CP1250","UTF8")
    writeLines(x,con=paste0(cmds[3],".Rmd"))
    filename <- paste0(cmds[3],".Rmd")
} else x <- t
    # cmds[4] <- "md"
    }
    if(!is.na(cmds[4])&&cmds[4]!="md") {
        knit(filename) } else {
        mdFile <- paste(cmds[3],cmds[4],sep=".")
        knit(filename, output = mdFile)
        message(mdFile)
        require(markdown)
        htmlFile <- paste(cmds[3],"html",sep=".")
        markdownToHTML(mdFile,htmlFile)
        shell.exec(htmlFile)
        } 
    } else 
    {
    require(patchDVI)
    render_sweave <- function(...) {} ## just in case the file is actually knitr based
    Sweave(filename)
}
#patchSynctex(sub("\\.Rnw", ".synctex", filename, ignore.case = TRUE))
#
if( exists("outputFile") ){
dump("outputFile",file="_outputFile.R")
}

