
%.eps: %.dot
	dot -Tps2 -o $@ $<

%.pdf: %.dvi
	dvipdfm $< 

%.ps: %.dvi
	dvips $< -o $@


%.dvi: %.tex %.bbl
	latex $<

all: thesis.dvi

thesis.dvi: thesis.tex Chapter1.tex Chapter2.tex Chapter4.tex Chapter5.tex Chapter7.tex thesis.bbl 
	./bulkepstopdf
	latex thesis.tex
	latex thesis.tex
	latex thesis.tex
	pdflatex thesis.tex
	pdflatex thesis.tex
	pdflatex thesis.tex
	scp thesis.pdf rfcornel@sequoia.csc.ncsu.edu:Sites

thesis.bbl: thesis.bib thesis.aux
	bibtex thesis

thesis.aux: thesis.tex
	latex thesis

presentation: Presentation.tex
	latex Presentation.tex
	latex Presentation.tex

clean:
	-rm *.aux
	-rm *.log
	-rm *.blg
	-rm *.lot *.lof *.dvi *.toc *.bbl *.pdf
