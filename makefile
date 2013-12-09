FILES = *sty *tex *pdf *md *.bib   makefile latexmkrc
%.pdf: %.tex latexmkrc %.bib
	latexmk -shell-escape *tex
dist: biblatex-source-division.pdf
	@$(RM) ../biblatex-source-division.zip
	rm -rf biblatex-source-division
	mkdir biblatex-source-division	
	cp $(FILES) biblatex-source-division
	zip -r ../biblatex-source-division.zip  biblatex-source-division
  
clean:
	@$(RM) *.pdf *.toc *.aux *.out *.fdb_latexmk *.log *.bbl *.bcf *.blg *run.xml *.synctex.gz*