#!/bin/gawk -f
BEGIN {
	max = -100000
	min =  100000
}

{
	split($0, row, "|")
	val = int(row[4])
	if (val > max) {
		max = val
	}
	if (val < min) {
		min = val
	}
	histo[val]++
}

END {
	for (i=min; i<=max;i++) {
		if (! (i in histo)) {
			histo[i]=0
		}
	}

	for (c in histo) {
		histo[c] /= NR
	}

	sum = 0
	for (i=min; i<=max;i++) {
		sum += histo[i]
		cdf[i] = sum
	}

	cdf_max = -100000 # always ends up 1
	cdf_min =  100000
	for (i=min; i<=max; i++) {
		if (cdf[i] < cdf_min) {
			cdf_min = cdf[i]
		}
		if (cdf[i] > cdf_max) {
			cdf_max = cdf[i]
		}
	}

	#scale and translate to the same range as the original input
	scale = (max-min)/(cdf_max-cdf_min)
	translation = min - cdf_min*scale
	for (i=min; i<=max; i++) {
		v = int(cdf[i] * scale + translation)
		print i, ":", v
	}
}
