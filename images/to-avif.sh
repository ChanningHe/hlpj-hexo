#!/bin/bash
for f in *.jpg *.png; do
  [ -f "$f" ] || continue
  out="${f%.*}.avif"
  echo "Converting $f -> $out"
  magick "$f" -define heic:speed=1 -define heic:lossless=false -quality 40 "$out"
done

