
%.eps: %.dot
	dot -Tps2 -o $@ $<

%.pdf: %.dvi
	dvipdfm $< 

%.ps: %.dvi
	dvips $< -o $@


%.dvi: %.tex %.bbl
	latex $<

all: thesis.dvi

thesis.dvi: thesis.tex Chapter1.tex Chapter2.tex Chapter3.tex Chapter4.tex Chapter5.tex Chapter6.tex Chapter7.tex thesis.bbl 
	latex thesis.tex
	latex thesis.tex
	latex thesis.tex

thesis.bbl: thesis.bib thesis.aux
	bibtex thesis

thesis.aux: thesis.tex
	latex thesis

clean:
	-rm *.aux
	-rm *.log
	-rm *.blg
	-rm *.lot *.lof *.ps *.pdf *.dvi *.toc *.bbl