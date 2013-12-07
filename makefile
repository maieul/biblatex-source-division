%.toc: %.tex
	xelatex -shell-escape *tex
%.pdf: %.tex %.toc
	xelatex -shell-escape *tex
dist: biblatex-source-division.pdf
	@$(RM) ../eledmac.zip
	zip ../biblatex-source-division.zip *sty *tex *pdf *md   makefile
  
clean:
	@$(RM) *.pdf *.toc *.aux *.out *.fdb_latexmk *.log