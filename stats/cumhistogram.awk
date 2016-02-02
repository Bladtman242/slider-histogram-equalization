#!/bin/gawk -f
BEGIN {
	max=-1
	min=2^16
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

	sum = 0
	for (i=min; i<=max;i++) {
		sum += histo[i]
		print i, sum
	}

}
