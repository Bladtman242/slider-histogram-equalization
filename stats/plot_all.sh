#!/bin/bash

#original data, histograms
orig="$(awk "{split(\$0, row, \"|\"); print int(row[4])}" < data.csv)"
echo "$orig" | ./histogram.awk > oldvalshist
echo "$orig" | ./cumhistogram.awk > oldvalscumhist

#equalized data, histograms

mapping="$(./avgparse.awk < data.csv)"
mapped="$(echo "$mapping" "$orig" | ./backprojection.awk)"

echo "$mapped" | ./histogram.awk > newvalshist
echo "$mapped" | ./cumhistogram.awk > newvalscumhist

gnuplot gnuplot
