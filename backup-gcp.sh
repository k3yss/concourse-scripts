#!/bin/bash

set -eu

# compress the repo in a tarball
timestamp=$(date +%Y%m%d%H%M%S)

tar -czf "blink-git-repo-${timestamp}.tar.gz" blink-git-repo 

ls 

rm "blink-git-repo-${timestamp}.tar.gz"

ls
