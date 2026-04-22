# Build both language versions into build/
latexmk -pdf cv-en.tex
latexmk -pdf cv-cz.tex

Write-Host ""
Write-Host "Build complete: build\cv-en.pdf and build\cv-cz.pdf"
