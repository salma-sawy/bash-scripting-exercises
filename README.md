# Bash Scripting Exercises

A collection of **Bash scripting exercises** for practicing Linux and Bash scripting skills, with a focus on common DevOps tasks.

## Exercises

### 1. Log Files Older Than 7 Days

Write a script that accepts a directory path as an argument and prints how many `.log` files are older than 7 days.

### 2. Server Health Check

Write a health-check script that pings 3 servers from an array and reports which ones are unreachable.

### 3. Getopts — Environment & Version

Write a script using `getopts` that accepts:

* `-e` — environment
* `-v` — version

Print a usage message if either option is missing.

### 4. Temp File Cleanup

Add `set -euo pipefail` and a trap-based cleanup to a script that creates a temporary file.

### 5. Docker CPU Usage

Write a one-liner using `awk` that prints only the Docker containers using more than 50% CPU from:

```bash
docker stats --no-stream
```

### 6. Curl Retry with Backoff

Write a retry-with-backoff function that retries a failed `curl` request up to 5 times with an increasing delay.

## Purpose

These exercises are designed to practice **Bash scripting fundamentals** and apply them to practical **DevOps tasks**.
