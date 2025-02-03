#!/bin/bash

# This script demonstrates a solution to the race condition bug using flock.

# Create two files
touch file1.txt
touch file2.txt

# Use flock to acquire a lock on each file before writing
flock -x "file1.txt" && (echo "Process 1 writing to file1" > file1.txt && echo "Process 1 finished")
flock -x "file2.txt" && (echo "Process 2 writing to file2" > file2.txt && echo "Process 2 finished")

#The flock command ensures that only one process can write to a file at a time, preventing data corruption

echo "Done"