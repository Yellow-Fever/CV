# Filename: Makefile
# Date: September 30, 2025
# Author: Andrew Beck
# Purpose: Compilation of a simple LaTeX document, in this case my CV. Build accounts
# 			for repeated passes through compilation to account for bibliographies.


.PHONY: 09162025-ANDREW_BECK-CV.pdf all clean

all: 09162025-ANDREW_BECK-CV.pdf

09162025-ANDREW_BECK-CV.pdf: 09162025-ANDREW_BECK-CV.tex
	latexmk -xelatex $<  

clean:
	latexmk -c -bibtex-cond1