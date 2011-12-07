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

bg: $(FIGS)
	xelatex -halt-on-error background_only && \
	bibtex background_only && \
	xelatex -halt-on-error background_only > /dev/null && \
	xelatex -halt-on-error background_only > /dev/null

title: $(FIGS)
	xelatex -halt-on-error title_dummy && open title_dummy.pdf

kde: build
	kpdf $(DOC).pdf

kde4: build
	okular $(DOC).pdf

mac: build
	open $(DOC).pdf

all: build

clean:
	rm -f *.aux *.bbl *.blg *.log *.pdf
