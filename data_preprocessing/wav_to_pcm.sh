#!/bin/bash
mkdir $2
new_dir=$2
for filename in $1/*.wav ; do
  n=$(basename $filename .wav )
  ffmpeg -y -i "$filename" -f s16le -acodec pcm_s16le -ac 1 -ar 16000 "${new_dir}/${n}.pcm"
done;
