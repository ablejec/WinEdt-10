cmds <- commandArgs(TRUE)
message(paste(cmds,collapse=" "))
filename <- cmds[1]
print(filename)

require(knitr)
if(!is.na(cmds[2]))
Sweave2knitr(filename) else Sweave2knitr(filename,cmds[2])

