#!/bin/bash

# List of patterns to clean
patterns=(
    "*.pdf"
    "*.aux"
    "*.tex~"
    "*.log"
    "*.lof"
    "*.lot"
    "*.out"
    "*.backup"
    "*.fls"
    "*.synctex.gz"
    "*.fdb_latexmk"
    "*.toc"
    "*.bbl"
    "*.blg"
)

# Loop through each pattern and delete matching files
for pattern in "${patterns[@]}"; do
    find . -type f -name "$pattern" -exec rm -f {} +
done

echo "LaTeX auxiliary files cleaned."
