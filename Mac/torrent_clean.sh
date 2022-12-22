#!/bin/bash
#rm -v ~/Downloads/*.torrent

for f in ~/Downloads/*.torrent
do
	# if found, delete it
    [ -f "$f" ];t=$(basename ${f}); echo "[+] Removed: $t" && rm "$f"
done
