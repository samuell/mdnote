#!/bin/bash
cat 20*md > allnotes.md
pandoc -i all.md -o allnotes.html
exo-open allnotes.html
