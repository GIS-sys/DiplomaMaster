# .latexmkrc
@default_files = ('main.tex');   # Set your main.tex as the entrypoint
$pdf_mode = 1;                   # Tell latexmk to use pdflatex to generate a PDF directly
$bibtex_use = 1;                 # Enable BibTeX processing
$recorder = 1;                   # Keep track of file dependencies
$pdflatex = 'pdflatex -file-line-error -interaction=nonstopmode -synctex=1 %O %S'; # The "do not stop on error" mode

