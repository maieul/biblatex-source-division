%.pdf: %.tex latexmkrc
	latexmk -shell-escape *tex
dist: biblatex-source-division.pdf
	@$(RM) ../eledmac.zip
	zip ../biblatex-source-division.zip *sty *tex *pdf *md   makefile latexmkrc
  
clean:
	@$(RM) *.pdf *.toc *.aux *.out *.fdb_latexmk *.log