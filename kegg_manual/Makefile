.PHONY: html

html: index.html

manual.html: manual.md
	multimarkdown manual.md > manual.html

index.html: template.html template_index.html manual.html
	python generate_html.py template_index.html -o index.html
