
%.eps: %.dot
	dot -Tps2 -o $@ $<

%.pdf: %.dvi
	dvipdfm $< 

%.ps: %.dvi
	dvips $< -o $@


%.dvi: %.tex %.bbl
	latex $<

all: thesis.ps

thesis.dvi: thesis.tex thesis.bbl 
	latex thesis

thesis.bbl: mybib.bib thesis.aux
	bibtex thesis

thesis.aux: thesis.tex
	latex thesis

