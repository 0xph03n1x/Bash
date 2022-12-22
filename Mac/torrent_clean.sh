#!/bin/bash
rm -v ~/Downloads/*.torrent

for f in ~/Downloads/*.torrent
do
	# if found, delete it
    [ -f "$f" ] echo "removed $f && rm "$f"
done
