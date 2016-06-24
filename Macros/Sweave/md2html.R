cmds <- commandArgs(TRUE)
filename <- cmds[1]
print(filename)
require(markdown)
markdownToHTML(filename)
