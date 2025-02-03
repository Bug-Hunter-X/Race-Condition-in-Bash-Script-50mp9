# Shell Script Race Condition

This repository contains a simple bash script that demonstrates a race condition bug.  The script creates two files and then uses two concurrent processes to write to them. Due to the non-deterministic nature of process scheduling, the order of output in the files is not guaranteed, demonstrating the race condition.

The solution involves using a locking mechanism (file locking) to ensure that only one process can write to the files at a time, preventing the race condition.