cmds <- commandArgs(TRUE)
filename <- cmds[1]
print(filename)
#
if(!is.na(cmds[2])&&cmds[2]=="knit") {
require(knitr)
purl(filename) } else
{
Stangle(filename)
}


