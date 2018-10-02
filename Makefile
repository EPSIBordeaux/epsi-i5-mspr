.DEFAULT_GOAL := build

filename=main

build:
	lualatex --shell-escape -synctex=1 -interaction=nonstopmode ${filename}.tex
	makeglossaries ${filename}

clean:
	rm -f ${filename}.{ps,pdf,log,aux,out,dvi,bbl,blg}

