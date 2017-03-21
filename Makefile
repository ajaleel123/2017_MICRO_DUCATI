RM     := /bin/rm -rf

all: 
#	cd GRAPHS; ./makeps.csh; cd ../
	latex main ; bibtex main; latex main; latex main; dvips -P pdf -G0 -t letter -o paper.ps -e 0 main;ps2pdf paper.ps &

nobib: 
	latex main ; latex main; latex main;  dvips -P pdf -G0 -t letter -o paper.ps -e 0 main;ps2pdf paper.ps

clean: 
	$(RM) *.dvi *.log *.aux *.ps *.pdf *.blg *.bbl *~*

