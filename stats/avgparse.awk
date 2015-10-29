#!/bin/gawk -f
BEGIN {
	max = -inf
	min = +inf
}

{
	val = int($0)
	if (max < val) {
		max = val
	}
	if (min > val) {
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

	#for (c in histo) {
	#	histo[c] /= NR
	#}

	sum = 0
	for (i=min; i<=max;i++) {
		sum += histo[i]
		lookup[i] = sum
	}

	prev = -inf
	idx = 0
	for (i=min; i<=max; i++) {
		v = int(((lookup[i]-lookup[0]) / (NR - lookup[0])) * (max-min))
		if (v > prev) {
			print idx, ":", v
			idx++
			prev = v
		}
	}
}
