#install texmaker from source center 
#!/bin/bash


cd ./src
pdflatex master.tex
bibtex master
pdflatex master.tex
pdflatex master.tex

makeindex master.nlo -s nomencl.ist -o master.nls
pdflatex master.tex


pdflatex master.tex
cp master.pdf report
