CHAPTER_NAMES = chapter1
CHAPTER_DIRS = $(addprefix chapters/, $(addsuffix /, $(CHAPTER_NAMES)))
CHAPTER_PDFS =   $(join $(CHAPTER_DIRS), $(addsuffix .pdf, $(CHAPTER_NAMES)))
CHAPTER_TEXS = $(CHAPTER_PDFS:.pdf=.tex)


CHAPTER_DEPEND = $(CHAPTER_TEXS)

LATEXMK = latexmk -use-make -pdf -dvi- -ps-

all: main

main: main.pdf $(CHAPTER_PDFS)

parts: $(CHAPTER_PDFS)

%.pdf: %.tex
	cd $(<D); $(LATEXMK) $(<F)


main.pdf: main.tex $(CHAPTER_DEPEND)
	$(LATEXMK) main.tex

.PHONY: all main parts