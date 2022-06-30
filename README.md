# docker-latex-builder
Minimal Docker image for building LaTeX documentation.

Superseded by https://gitlab.astro-wise.org/omegacen/ci-templates/-/tree/master/dockerfiles/latex-builder.

```
docker build -t omegacen/latex-builder .
```

Tectonic is used to compile the LaTeX files because tectonic will automatically
fetch any required packages. A large set of packages is prefetched.

## Contains

* tectonic for the LaTeX compilation,
* texlive-core for latexdiff,
* git-latexdiff, and
* biber for biblatex support.

## History

### V1.2, 2020/09/14

* Add biber 2.11. Version hardcoded because the latest (2.12) is not compatible with the latest tectonic (0.1.15).
* Therefore hardcode tectonic to 0.1.15.

### V1.1, 2020/05/19

* Add git-latexdiff.

### V1.0, 2020/15/21

* Add tectonic.
* Initial version.
