
Rnw2HTML <- function(lfn,...){
t <- readLines(lfn)
x <- t
#
rnw2rmd <- function(x){
##################################################
# Functions
#
# mygsub
#
mygsub <- function(x,pattern,replacement,...)
gsub(pattern,replacement,x,...)
#
# change
#
change <- function(pat,rep,text,verbose=TRUE,...){
where <- grep(pat,text)
t <- sapply(text,mygsub,pattern=pat,replace=rep,...)
names(t) <- NULL
if(verbose) print(cbind(text[where],t[where]))
invisible(t)
}
#####################################################

x <- change("\\\\title\\{(.*)\\}","# \\1",x)
x <- change("\\\\author\\{(.*)\\}",
"## Author: \\1",x)

x <- change("\\\\date\\{(.*)\\}",
"Date: \\1",x)
x <- change("\\\\section*\\{(.*)\\}",
"## \\1",x)

#// ReplaceDialog;
#// subsection
x <- change("\\\\subsection*\\{(.*)\\}",
"### \\1",x)

#// ReplaceDialog;
#// subsubsection
x <- change("\\\\subsubsection*\\{(.*)\\}",
"### \\1",x)

#// ReplaceDialog;
#// \\begin{abstract}
x <- change("\\\\begin\\{abstract\\}",
"## Abstract",x)

#// typeface bold
x <- change("\\\\textbf\\{(.*)\\} ",
"\\*\\*\\1\\*\\* ",x)

#// typeface italic
x <- change("\\\\textit\\{(.*)\\} ",
"\\*\\1\\* ",x)

#// typeface tt
x <- change("\\\\texttt\\{(.*)\\} ",
"`\\1`" ,x)

#// code
x <- change("\\\\code\\{(.*)\\} ",
"`\\1` ",x)

#// verb
x <- change("\\\\\\\\verb'(.*)' ",
"`\\1` ",x)

#//  url
x <- change("\\\\url\\{(.*)\\}",
"\\1",x)

#// href
x <- change("\\\\href\\{(1.*)\\}*\\{(2.*)\\}",
"\\[\\2\\](\\1)",x)

#// small
x <- change("\\\\small",
"",x)

#// toLatex(sessionInfo())
x <- change("toLatex((.*))",
"\\1",x)


#// comments
x <- change("%.*$",
"",x)


#// comments
x <-
change("render_sweave\\(\\)",
"render_markdown()",x)

#//

#//
#// Sweave stuff
#//
#// out.width  1:code, 2: spaces=*, 3: comma or end of chunk
x <- change("(1out.width)(2@[ ]=*)(3[,>>])",
"\\1=400\\3",x)


#// code chunks
x <- change("<<(.*)>>=",
"```\\{r \\1 \\}",x)


#// text chunks
x <- change("@",
"```",x)

#// paragraphs
x <- change("\\\\>",
 ">",x)

#// Sexpr
x <- change("\\\\Sexpr\\{(.*)\\}",
 "`r \\1`",x)



#// delete all other TeX commands
#// no braces commands
x <- x[-grep("^\\\\.*$",x)]

# LaTeX comments
#
x <- change("^%+","#",x)

#// multiline commands, braces at the end
#x <- change("^**\\}>",
# "",x)

## remove empty chunks
 s=grep("^```\\{r",x)
 e=grep("^```$",x)
rm <- which(apply(cbind(s,e),1,function(x,text)
all(text[(x[1]+1):(x[2]-1)]==""),text=x))
if(length(rm)>0)
for (i in rm) x <- x[-(s[i]:e[i])]
##
invisible(x)
}
#
x <- rnw2rmd(t) # convert
# save .Rmd file
x <- iconv(x,"CP1250","UTF8")
writeLines(x,con=paste0(lfn,".Rmd"))

require(knitr)
require(markdown)
knit2html(paste0(lfn,".Rmd")) # make .md and .html
#

#markdownToHTML(paste0(lfn,".md"),paste0(lfn,".html"))

#shell.exec(paste0(lfn,".html"))
browseURL(paste0(lfn,".html")) # display html
invisible(x)
}

