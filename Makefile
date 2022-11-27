DOCNAME=pres
OUTDIR=build

all: report

.PHONY: clean

createoutdir:
	mkdir -p $(OUTDIR)

report: createoutdir
	latexmk -pdf -output-directory=$(OUTDIR) $(DOCNAME)
	latexmk -pdf -output-directory=$(OUTDIR) -c
	#mkdir -p build/
	#cp $(DOCNAME).tex build/
	#cd build/
	#pdflatex $(DOCNAME).tex
	#bibtex $(DOCNAME).aux
	#pdflatex $(DOCNAME).tex
	#pdflatex $(DOCNAME).tex

view: report
	xdg-open $(DOCNAME).tex

clean:
	rm -rf $(DOCNAME)
