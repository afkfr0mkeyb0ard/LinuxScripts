#!/bin/bash

OUTDIR="$HOME/records"
mkdir -p "$OUTDIR"

DATE=$(date +"%Y-%m-%d_%H-%M-%S")
FILE="$OUTDIR/terminal_$DATE.txt"

exec script -q -f "$FILE"
