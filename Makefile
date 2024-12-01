## TeX file name and Bibtex file name
DOC	=	bthesis
BIB	= 	bthesis

## TeX command 
# 必要に応じて、書き換えてください
TEX	=	/usr/texbin/platex
DVIPDF	=	/usr/texbin/dvipdfmx
BIBTEX	=	/usr/texbin/upbibtex
# RTF	=	/opt/local/bin/latex2rtf
.SUFFIXES:	.tex .dvi

dvi:	$(DOC).tex
	$(TEX) -kanji=utf8 $<
	$(TEX) -kanji=utf8 $<

bib: 
	$(BIBTEX) $(BIB)
	# cp $(DOC).bbl $(DOC).tmp.bbl
	# sed s/pages/pp./g < $(DOC).tmp.bbl > $(DOC).bbl
	$(TEX) -kanji=utf8 $(DOC).tex
	$(TEX) -kanji=utf8 $(DOC).tex

pdf:
	$(DVIPDF) -d5 $(DOC).dvi
	#open $(DOC).pdf

update: $(DOC).tex
	$(TEX) -kanji=utf8 $<
	$(TEX) -kanji=utf8 $<
	$(DVIPDF) -d5 $(DOC).dvi
