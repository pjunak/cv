# CV

LaTeX source for my CV, built with the [AltaCV](https://github.com/liantze/AltaCV) class.

## Build

Requires a TeX distribution with pdfLaTeX (or XeLaTeX/LuaLaTeX) and `latexmk`.

```bash
# Linux / macOS
./build.sh

# Windows (PowerShell)
./build.ps1
```

Output: `build/cv-en.pdf` and `build/cv-cz.pdf`

## Continuous build

Pull requests compile both languages and retain the `cv-pdfs` artifact for 14
days so both PDFs can be reviewed before merging. Only successful builds on
`main` publish those same PDFs at the website's download destinations. LaTeX errors
stop the build without waiting for interactive input.

Every push to `main` triggers `.github/workflows/build-and-publish.yml`, which compiles both
PDFs in a TeX Live container and attaches them to the rolling [`latest` release](https://github.com/pjunak/cv/releases/latest):

- <https://github.com/pjunak/cv/releases/latest/download/cv-en.pdf>
- <https://github.com/pjunak/cv/releases/latest/download/cv-cz.pdf>

[petr.junak.eu](https://petr.junak.eu) links directly to these URLs. Edit LaTeX
and push; GitHub builds and publishes the PDFs automatically. No manual PDF
upload, website rebuild or `WEBSITE_DISPATCH_TOKEN` is needed.

## Structure

| File | Purpose |
|------|---------|
| `cv-en.tex` / `cv-cz.tex` | Language wrappers (set `\lang`, load `cv.tex`) |
| `cv.tex` | Master document — shared by both languages |
| `src/experience.tex` | Work experience |
| `src/education.tex` | Education |
| `src/languages.tex` | Languages |
| `src/strengths.tex` | Strengths |
| `src/hobbies.tex` | Hobbies & interests |
| `src/life_philosophy.tex` | Life philosophy |
| `altacv.cls` | AltaCV class (unmodified) |

Translations live inline next to English via `\tr{EN}{CZ}` (plus `\enonly{…}` / `\czonly{…}` for whole-block swaps), so both languages stay in sync in one source.

## License

- My original content (text and images) © 2025 Petr Junák — [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/).
- `altacv.cls` © LianTze Lim — [LPPL 1.3c](https://www.latex-project.org/lppl.txt).

If you fork or reuse, please replace my personal content with your own.
