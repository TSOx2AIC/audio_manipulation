#!/bin/sh

cd sample_wavs
for oldname in *; do newname=`echo $oldname | sed -e 's/ //g'`; mv "$oldname" "$newname"; done
for name in *.mp3; do spleeter separate -p spleeter:5stems -o output/ $name; done