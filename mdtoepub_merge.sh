#!/bin/bash
cat 20*md > allnotes.md
pandoc -i allnotes.md -o allnotes.epub
exo-open allnotes.epub
