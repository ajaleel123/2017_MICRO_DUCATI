RM     := /bin/rm -rf

all: 
	latex main ; bibtex main; latex main; latex main; dvips -P pdf -G0 -t letter -o paper.ps -e 0 main;ps2pdf paper.ps &

internal:
	latex main_internal ; bibtex main_internal; latex main_internal; latex main_internal; dvips -P pdf -G0 -t letter -o ducati.ps -e 0 main_internal;ps2pdf ducati.ps &


nobib: 
	latex main ; latex main; latex main;  dvips -P pdf -G0 -t letter -o paper.ps -e 0 main;ps2pdf paper.ps

clean: 
	$(RM) *.dvi *.log *.aux *.ps *.pdf *.blg *.bbl *~* *.out

