# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Build

Compile with pdfLaTeX (or XeLaTeX/LuaLaTeX):

```bash
pdflatex cv.tex
biber cv
pdflatex cv.tex
pdflatex cv.tex
```

Or with `latexmk` (recommended, handles reruns automatically):

```bash
latexmk -pdf cv.tex
latexmk -xelatex cv.tex   # for XeLaTeX (required for custom fonts via \setmainfont)
```

Clean build artifacts:

```bash
latexmk -c
```

## Architecture

`cv.tex` is the master file. It defines the two-column layout (60/40 split via `paracol`) and `\input`s section files from `src/`. Preamble setup (fonts, colors, bibliography) lives in `cv.tex` itself; `src/preamble.tex` is unused.

Sections in left column (60%): experience, hobbies, life_philosophy
Sections in right column (40%): education, languages, strengths

Optional sections (publications, referees, most_proud_of) exist in `src/` but are commented out in `cv.tex`.

`altacv.cls` is the unmodified upstream AltaCV template class — avoid editing it.

Bibliography uses `biblatex` with `biber` backend. Style config is in `src/pubs-num.tex` (numeric) or `src/pubs-authoryear.tex` (author-year); only one is `\input`ed at a time.

## Key AltaCV commands

- `\cvevent{title}{employer}{date range}{location}` — job entry
- `\cvachievement{\faIcon}{bold title}{description}` — achievement/strength item
- `\cvskill{name}{rating 1–5}` — skill with dot rating
- `\switchcolumn` — switch to the right paracol column
