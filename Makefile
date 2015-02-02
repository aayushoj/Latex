all: dvi pdf clean

dvi: 
	latex myresume.tex
	latex article.tex
	bibtex article
	latex article.tex
	latex article.tex

pdf:
	pdflatex myresume.tex
	pdflatex article.tex
	bibtex article
	pdflatex article.tex
	pdflatex article.tex


clean: 
	rm -rf *.aux *.blg *.bbl *.log a-eps-converted-to.pdf


