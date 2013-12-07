dist:
	latexmk *tex
	@$(RM) ../eledmac.zip
	zip ../biblatex-source-division.zip *sty *tex *pdf *md    
  
