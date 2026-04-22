#!/usr/bin/env bash
set -euo pipefail

# Build both language versions into build/
latexmk -pdf cv-en.tex
latexmk -pdf cv-cz.tex

echo ""
echo "Build complete: build/cv-en.pdf and build/cv-cz.pdf"
