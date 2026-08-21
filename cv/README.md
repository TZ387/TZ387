CV source, written in [Typst](https://typst.app/).

- `main.typ` — content
- `template.typ` — layout/styling
- `img/` — icons and images used by the template

On every push to `main` that touches this folder, [.github/workflows/build-cv.yml](../.github/workflows/build-cv.yml) compiles `main.typ` and commits the result back to the repo root as `tilen-zel-cv.pdf`, which the top-level README links to.

Note: `template.typ` also references `img/patent.svg` and `img/software.svg` for those publication types, but neither is used by the current `main.typ` content, so they aren't included. Add them if a patent or software-copyright entry is ever added to the Publications section.
