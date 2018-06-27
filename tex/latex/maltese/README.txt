This folder contains the source and compiled version for the maltese package.
It provides support for writing the non-Lating Maltese characters in Maltese.
See maltese.pdf for further details.

To regenerate the document:

latex maltese.ins
pdflatex maltese.dtx
makeindex -s gglo.ist -o maltese.gls maltese.glo
pdflatex maltese.dtx
pdflatex maltese.dtx
