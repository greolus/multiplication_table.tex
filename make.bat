rm -r pythontex-files-* 
rm multi_table.pytxcode 
rm multi_table.pdf
docker run -w /root -v %cd%:/root/ texlive/texlive xelatex  multi_table.tex
docker run -w /root -v %cd%:/root/ texlive/texlive pythontex multi_table.tex
docker run -w /root -v %cd%:/root/ texlive/texlive xelatex  multi_table.tex
rm multi_table.aux
rm multi_table.log
rm multi_table.pytxcode
rm -r pythontex-files-*
rm texput.log
start multi_table.pdf