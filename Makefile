build: multi_table.pdf
	rm -r pythontex-files-* 2>/dev/null
	rm  multi_table.pytxcode  multi_table.pdf 2>/dev/null

	docker run -w /root -v %cd%:/root/ texlive/texlive xelatex  multi_table.tex > /dev/null
	docker run -w /root -v %cd%:/root/ texlive/texlive pythontex multi_table.tex
	docker run -w /root -v %cd%:/root/ texlive/texlive xelatex  multi_table.tex

	rm multi_table.aux multi_table.log multi_table.pytxcode texput.log 2>/dev/null
	rm -r pythontex-files-* 2>/dev/null

clear: 
	rm -r pythontex-files-* 2>/dev/null
	rm multi_table.aux multi_table.log multi_table.pytxcode texput.log 2>/dev/null
	rm multi_table.pdf 2>/dev/null

