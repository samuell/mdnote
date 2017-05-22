#!/bin/bash
# ----
# Convert Markdown files starting with '2' 
# in the current directory to HTML
# Author: Samuel Lampa <samuel.lampa@gmail.com>
# ----

if [[ ! -d html ]]; then
	mkdir html
fi;
for f in 2*.md; do 
	pandoc -i $f -o html/${f%.md}.html;
done;
