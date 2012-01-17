DOC = stevejohnson_thesis
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

all: build

clean:
	rm -f *.aux *.bbl *.blg *.log *.pdf *.lof *.lot *.out *.toc
