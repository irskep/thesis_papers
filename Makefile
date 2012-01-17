DOC = stevejohnson_thesis
DOC_SIMPLE = stevejohnson_thesis_simple
INCLUDE_BIB = yes

build: $(FIGS)
ifeq ($(INCLUDE_BIB),yes)
	xelatex -halt-on-error $(DOC) && \
	bibtex $(DOC) && \
	xelatex -halt-on-error $(DOC) > /dev/null && \
	xelatex -halt-on-error $(DOC) > /dev/null
else
	xelatex -halt-on-error $(DOC) && \
	xelatex -halt-on-error $(DOC) > /dev/null
endif

once: $(FIGS)
	xelatex -halt-on-error $(DOC)

simple: $(FIGS)
ifeq ($(INCLUDE_BIB),yes)
	pdflatex -halt-on-error $(DOC_SIMPLE) && \
	bibtex $(DOC_SIMPLE) && \
	pdflatex -halt-on-error $(DOC_SIMPLE) > /dev/null && \
	pdflatex -halt-on-error $(DOC_SIMPLE) > /dev/null
else
	pdflatex -halt-on-error $(DOC_SIMPLE) && \
	pdflatex -halt-on-error $(DOC_SIMPLE) > /dev/null
endif

all: build

clean:
	rm -f *.aux *.bbl *.blg *.log *.pdf *.lof *.lot *.out *.toc
