#!/usr/bin/env bash
set -euo pipefail

# Build CV into build/ directory
latexmk -pdf cv.tex

echo ""
echo "Build complete: build/cv.pdf"
