#!/bin/bash

for i in ship_*.svg; do
    for size in {200,300,400}; do
        convert -background none $i -scale ${size}x${size} $i.png
        pngquant 8 - < $i.png > ../img/$(basename $i .svg)_${size}.png
        rm $i.png
    done
done
