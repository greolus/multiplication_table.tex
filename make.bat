rm -r pythontex-files-* 2>NUL
rm  multi_table.pytxcode  multi_table.pdf 2>NUL

@docker run -w /root -v %cd%:/root/ texlive/texlive xelatex  multi_table.tex > NUL
@docker run -w /root -v %cd%:/root/ texlive/texlive pythontex multi_table.tex
@docker run -w /root -v %cd%:/root/ texlive/texlive xelatex  multi_table.tex

rm multi_table.aux multi_table.log multi_table.pytxcode texput.log 2>NUL
rm -r pythontex-files-* 2>NUL

@start multi_table.pdf