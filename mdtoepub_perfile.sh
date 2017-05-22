#!/bin/bash
# ----
# Convert Markdown files starting with '2' 
# in the current directory to EPUB
# Author: Samuel Lampa <samuel.lampa@gmail.com>
# ----

if [[ ! -d epub ]]; then
	mkdir epub
fi;
for f in 2*.md; do 
	pandoc -i $f -o epub/${f%.md}.epub;
done;
