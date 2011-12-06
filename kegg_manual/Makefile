.PHONY: html images ipad

html: index.html

ipad: index.html build
	cp index.html \
		pathway.png \
		kegg_web_site.png \
		selection_info.png \
		animals_only_graph.png \
		logo_combined.png \
		node_legend.png \
		build/

build:
	mkdir build

index.html: template.html template_index.html manual.html images
	python generate_html.py template_index.html -o index.html

images: pathway.png kegg_web_site.png selection_info.png animals_only_graph.png node_legend.png

manual.html: manual.md
	multimarkdown manual.md > manual.html

pathway.png: screenshot_pathway.png
	convert screenshot_pathway.png -resize 320 pathway.png

kegg_web_site.png:
	convert screenshot_kegg_web_site.png -resize 320 kegg_web_site.png

selection_info.png:
	convert screenshot_selection_info.png -resize 320 selection_info.png

animals_only_graph.png:
	convert screenshot_animals_only_graph.png -resize 320 animals_only_graph.png
