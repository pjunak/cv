# CV (AltaCV template)

This repository contains the LaTeX source for my CV, built with the AltaCV class.

## Build
- Engine: pdfLaTeX (or XeLaTeX/LuaLaTeX)
- Packages: provided by your TeX distribution (fontawesome5, simpleicons, paracol, biblatex, etc.)
- Entry point: `cv.tex`

## Structure
- `cv.tex` — master file
- `src/` — section files (experience, education, languages, strengths, hobbies, optional sections)
- `altacv.cls` — AltaCV class (unmodified)
- `src/sample.bib` — placeholder bibliography entries (replace with your own)
- Optional sections not included by default in `cv.tex` contain placeholders and comments only.

## Licensing
- My original content (text and images) © 2025 Petr Junák. Licensed under CC BY-NC 4.0.
- Template class file `altacv.cls` © LianTze Lim. Distributed under LPPL 1.3c (see file header and https://www.latex-project.org/lppl.txt).
- If you fork or reuse, please replace my personal content with your own.

## Acknowledgements
- Template: [AltaCV by LianTze Lim](https://github.com/liantze/AltaCV) (LPPL 1.3c)

## Notes
- Remove or replace any placeholder data (e.g., `sample.bib`, `referees.tex`) before publishing a final PDF.
- To list publications, edit `src/sample.bib` or point `\addbibresource` to your own `.bib` file and update the names via `\mynames{...}` if needed.
