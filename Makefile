DOC = stevejohnson_thesis
INCLUDE_BIB = no

%.pdf : %.dot
	dot -Tpdf $*.dot -o $*.pdf

build: $(FIGS)
ifeq ($(INCLUDE_BIB),yes)
	xelatex -halt-on-error $(DOC) > /dev/null && \
	bibtex $(DOC) > /dev/null
endif
	xelatex -halt-on-error $(DOC) > /dev/null && \
	xelatex -halt-on-error $(DOC) > /dev/null

dbg: $(FIGS)
ifeq ($(INCLUDE_BIB),yes)
	xelatex -halt-on-error $(DOC) && \
	bibtex $(DOC)
endif
	xelatex -halt-on-error $(DOC) && \
	xelatex -halt-on-error $(DOC)

kde: build
	kpdf $(DOC).pdf

kde4: build
	okular $(DOC).pdf

mac: build
	open $(DOC).pdf

all: build

clean:
	rm -f *.aux *.bbl *.blg *.log *.pdf
