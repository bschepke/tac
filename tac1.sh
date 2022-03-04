#!/bin/bash

lines=0

declare -a array

while IFS=$'\n' read -r line; do
	array[lines]="$line"
	((++lines))
done < $1

for (( i=$lines-1; i>=0; --i )); do
	printf "${array[i]}\n"
done

