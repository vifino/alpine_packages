#!/bin/sh

# Builder script.
# Vars
pkg=$1

# Logic
cd $pkg

# Checksums
abuild checksum

# Build package.
abuild -r
