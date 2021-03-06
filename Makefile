TARGET = Kira
FIGURES = 


all: figs ${TARGET}.pdf

clean: 
	rm -f ${TARGET}.log ${TARGET}.bbl ${TARGET}.log ${TARGET}.d 
	rm -f ${TARGET}.blg ${TARGET}.out ${TARGET}.aux
	rm -f ${TARGET}.pdf ${TARGET}.synctex.gz

%.pdf : %.tex $(FIGURES) 
	pdflatex $*
	bibtex $(TARGET)
	pdflatex $*
	pdflatex $*

figs: 


force_look:
	true
