#!/bin/gawk -f
/[0-9]\ *:\ *[0-9]+/ {
	split($0, row, ":")
	k=int(row[1])
	v=int(row[2])
	cdf[k]=v
}

/^[0-9]+\ *$/ {
	print cdf[$1]
}
