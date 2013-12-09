%.pdf: %.tex latexmkrc %.bib
	latexmk -shell-escape *tex
dist: biblatex-source-division.pdf
	@$(RM) ../eledmac.zip
	zip ../biblatex-source-division.zip *sty *tex *pdf *md *.bib   makefile latexmkrc
  
clean:
	@$(RM) *.pdf *.toc *.aux *.out *.fdb_latexmk *.log *.bbl *.bcf *.blg *run.xml *.synctex.gz*