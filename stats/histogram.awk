#!/bin/gawk -f
BEGIN {
	max=-inf
	min=+inf
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

	for (c in histo) {
		histo[c] /= NR
	}

	for (i=min; i<=max;i++) {
		print i, histo[i]
	}

}
