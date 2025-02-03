#!/bin/bash

# This script demonstrates a race condition bug.

# Create two files
touch file1.txt
touch file2.txt

# Start two processes that concurrently write to the files.
(echo "Process 1 writing to file1" > file1.txt &)
(echo "Process 2 writing to file2" > file2.txt &)

# Wait for both processes to finish.
wait

# Race Condition: The order in which processes write to the files is non-deterministic.
# This can lead to unexpected or inconsistent results, especially in multithreaded or concurrent scenarios.
# In this case, the order of the output in the files is unpredictable.

echo "Done"