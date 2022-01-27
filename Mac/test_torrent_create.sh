#!/bin/bash
for i in {0..9}
do
	touch ~/Downloads/File${i}.torrent
done
ls -la ~/Downloads | grep *torrent
echo "Test complete"
