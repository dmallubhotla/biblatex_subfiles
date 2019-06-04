Just testing out the best way to get subfiles and readme. One (sub-par) option is to have a global bibliography file, which does have the advantage of custom structures and the ability to check for duplicate keys, but the disadvantage of being global and breaking modularity. This can be referenced from any subfile, but at the cost of forcing each subfile to define the rootdir location so that it can be compiled individually. It's not too difficult to get the `\printbibliography` function working by wrapping with either some variant of 

```
\newcommand{\onlyinsubfile}[1]{#1}
\newcommand{\notinsubfile}[1]{}

\begin{document}
\renewcommand{\onlyinsubfile}[1]{}
\renewcommand{\notinsubfile}[1]{#1}
```
or so I think.