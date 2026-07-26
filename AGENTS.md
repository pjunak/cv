# CV

Bilingual English/Czech CV built from shared LaTeX source. Both outputs must
remain structurally equivalent and build from the same `cv.tex`.

## Commands

Requires a TeX distribution with `latexmk` and pdfLaTeX.

```powershell
.\build.ps1
```

```bash
./build.sh
```

Both scripts must produce:

```text
build/cv-en.pdf
build/cv-cz.pdf
```

For a clean verification when generated state may be stale:

```bash
latexmk -C cv-en.tex cv-cz.tex
./build.sh
```

## Structure

```text
cv-en.tex / cv-cz.tex  Language wrappers; set \lang and load cv.tex
cv.tex                 Shared document layout and composition
src/experience.tex     Work experience
src/education.tex      Education
src/languages.tex      Languages
src/strengths.tex      Strengths
src/hobbies.tex        Hobbies
src/life_philosophy.tex Life philosophy
altacv.cls             Vendored AltaCV class
build.ps1 / build.sh   Local two-language builds
.github/workflows/build-and-publish.yml
                       CI build, rolling release, website dispatch
```

## Editing rules

- Keep shared content in `cv.tex` or `src/*.tex`; do not fork whole English and
  Czech document bodies.
- Use `\tr{English}{Czech}` for inline translations and `\enonly{...}` /
  `\czonly{...}` only when an entire block differs.
- Whenever text changes, review both languages for meaning, line wrapping,
  overflow, broken links, missing glyphs, and accidental blank space.
- Preserve the wrapper contract in `cv-en.tex` and `cv-cz.tex`.
- Treat `altacv.cls` as vendored upstream code. Change it only for a deliberate,
  documented layout fix that cannot live in the project source.
- Keep personal content and dates accurate; do not invent missing biography,
  employment, education, or contact details.

## Publishing

Pushes to `main` compile both PDFs in TeX Live, upload them to the rolling
GitHub Release tagged `latest`, and optionally dispatch a rebuild of the
sibling `petr.junak.eu` site. Preserve the stable release asset names:

```text
cv-en.pdf
cv-cz.pdf
```

Changes to workflow permissions, release behavior, or the website dispatch are
deployment changes and require explicit verification.

## Completion

- Build both languages successfully.
- Inspect both resulting PDFs, not just the LaTeX log.
- Confirm no overfull boxes or missing-reference errors were introduced.
- Update `README.md` and this file when build, structure, translation, or
  publishing conventions change.

Do not commit generated auxiliary files or credentials. Do not commit, push,
publish, or rewrite release history unless explicitly requested.
