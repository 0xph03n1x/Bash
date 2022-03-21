#!/bin/bash
rm -v ~/Downloads/*.torrent

for f in ~/Downloads/*.torrent
do
	# if filem, delete it
	[ -f "$f" ] && rm "$f" && echo "removed $f"
done