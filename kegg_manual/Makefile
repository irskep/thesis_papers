.PHONY: html images ipad clean

clean:
	rm manual.tex
	rm pathway.png kegg_web_site.png selection_info.png animals_only_graph.png
	rm build/*

html: index.html images

latex: manual.tex images

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

index.html: template.html template_index.html manual.html
	python generate_html.py template_index.html -o index.html

images: pathway.png kegg_web_site.png selection_info.png animals_only_graph.png node_legend.png

manual.html: manual.md
	multimarkdown manual.md > manual.html

manual.tex: manual.md
	multimarkdown manual.md --to=latex | sed 's/chapter/section/g' \
		| sed 's/htbp/ht!/g' \
		| sed 's/keepaspectratio,width=\\textwidth,height=0.75\\textheight]{/width=3in]{kegg_manual\//g' \
		> manual.tex

pathway.png: screenshot_pathway.png
	convert screenshot_pathway.png -resize 320 pathway.png

kegg_web_site.png:
	convert screenshot_kegg_web_site.png -resize 320 kegg_web_site.png

selection_info.png:
	convert screenshot_selection_info.png -resize 320 selection_info.png

animals_only_graph.png:
	convert screenshot_animals_only_graph.png -resize 320 animals_only_graph.png
