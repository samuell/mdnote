#!/bin/bash

# Create a date stamped journal file
# (UTC fits my day/night cycle better)
journalfile=$(date --utc +%Y%m%d-%u.md);

if [[ ! -f $journalfile ]]; then
	# Create journal file with today's date as Heading 1
	echo "# "$(date "+%A, %e %B, %Y") >> $journalfile;
	# Add to git repo
	git add $journalfile;
else
	echo "File already exists: $journalfile";
fi;

vim $journalfile;
git commit -m "Changes in journal file $journalfile" $journalfile;
git push origin master;
