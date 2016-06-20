# Markdown Notebook
I couldn't find a suitable simple Markdown Notebook, so I "created my own" 

![Screenshot](mdnotebook.png)

## Features

- Automatically creates a datestamped daily journal file, with the date in the heading
- Opens for editing in vim
- Commits and pushes the changes after closing vim
- A script to convert all files from markdown to html (if viewing on github/bitbucket is not enough)

## Dependencies

- Requires [pandoc](http://pandoc.org/) for the markdown-to-html conversion

## Usage

1. `git init .`
2. `git remote add blabla...` (E.g. bitbucket private repo)
3. `./edit.sh` (Will create a new datestamped file and open it in vim)
4. Write
5. Save
6. Exit (The journal will be committed and pushed to the origin at this point)
8. `./mdtohtml.sh`
9. `chromium-browser html/<filename>.html`
