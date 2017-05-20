#!/bin/bash
cat 20*md > allnotes.md
pandoc -i all.md -o allnotes.epub
exo-open allnotes.epub
