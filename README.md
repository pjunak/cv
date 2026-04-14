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

Output: `build/cv.pdf`

## Structure

| File | Purpose |
|------|---------|
| `cv.tex` | Master document |
| `src/experience.tex` | Work experience |
| `src/education.tex` | Education |
| `src/languages.tex` | Languages |
| `src/strengths.tex` | Strengths |
| `src/hobbies.tex` | Hobbies & interests |
| `src/life_philosophy.tex` | Life philosophy |
| `altacv.cls` | AltaCV class (unmodified) |

## License

- My original content (text and images) © 2025 Petr Junák — [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/).
- `altacv.cls` © LianTze Lim — [LPPL 1.3c](https://www.latex-project.org/lppl.txt).

If you fork or reuse, please replace my personal content with your own.