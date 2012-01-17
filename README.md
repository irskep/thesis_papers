Steve Johnson's Amazing Thesis Report
=====================================

Requirements
------------

* XeTeX
* `listings`
* `xspace`
* `hyperref`, `color`, `xcolor`, `xltxtra`, `xunicode`, `graphicx`, `fixltx2e`

Compiling the PDF
-----------------

Everything (3 iterations of `xelatex` and one of `bibtex`):

    > make

Just one iteration of `xelatex`:

    > make once

Build and automatically open in your platform's PDF viewer:

    > make mac  # Mac OS X
    > make kde  # kpdf
    > make kde4 # okular

Structure
---------

TeX basics:

* `stevejohnson_thesis.tex`: Combine all files into one document
* `formatting/`
    * `doxygen.sty`: Required for producing the iPathCase-KEGG source code
      documenation appendix
    * `setup.tex`: Import packages, configure formatting, define commands,
      configure `listings` package
* `bibliography.bib`: Information for citations and bibliography section

Content:

* `background/`: Background chapter sections (`main.tex` combines them into a
  chapter)
* `basic/`
    * `abstract.tex`: Abstract. Also contains macro definitions for different
      PathCase databases because for some reason they didn't work in
      `setup.tex`.
    * `conclusion.tex`, `introduction.tex`, `literature_survey.tex`: Top-level
      chapters corresponding to their file names
    * `title.tex`: Title page
* `kegg/`: iPathCase-KEGG chapter sections (`main.tex` combines them into a
  chapter)
* `kegg_doc/`: Source code documentation appendix for iPathCase-KEGG (`all.tex`
  combines them into a chapter)
* `kegg_manual/`: Source files for generating the iPathCase-KEGG manual in both
  HTML and LaTeX format
    * `generate_html.py`: Python script to generate HTML version (LaTex version
      is generated by the third party tool MultiMarkdown)
    * `template.html`: Basic HTML template with style information
    * `template_index.html`: HTML template with manual contents inheriting from
      `template.html`
    * Various images
* `maw/`: iPathCase-SMDA chapter sections (`main.tex` combines them into a
  chapter)

Figures:

* `fig/`
* `background/figures/`
* `kegg/figures/`
* `maw/figures/`
