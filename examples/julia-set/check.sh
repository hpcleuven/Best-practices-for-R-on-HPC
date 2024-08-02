#!/usr/bin/env bash

# image size
N=50

# all implementations
all_implementations="serial double_loops double_loops_column_major single_loops"

# gold-standard implementation
golden_implementation="serial"

# Run the implementations
for implementation in $all_implementations; do
    echo "Running $implementation"
    ./julia.R --width $N --height $N --implementation "julia_${implementation}.R" 2> "${implementation}.txt"
done

# Compare the implementations
status=0
for implementation in $all_implementations; do
    if [ "$implementation" == "$golden_implementation" ]; then
        continue
    fi
    echo "Comparing $implementation"
    diff -u "${implementation}.txt" "${golden_implementation}.txt"
    status=$((status + $?))
done
if [ $status -ne 0 ]; then
    echo "Some implementations are not correct"
    exit 1
else
    echo "All implementations are correct"
fi

# Clean up
for implementation in $all_implementations; do
    echo "Cleaning up $implementation"
    rm -f "${implementation}.txt"
done
