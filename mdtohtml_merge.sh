#!/bin/bash
cat 20*md > allnotes.md

htmlfile=allnotes.html
echo '<link rel="stylesheet" type="text/css" href="css/main.css">' > $htmlfile
cat 20*.md > allnotes.md
pandoc -i allnotes.md -o $htmlfile.tmp
cat $htmlfile.tmp >> $htmlfile;
rm $htmlfile.tmp;

chromium-browser allnotes.html
