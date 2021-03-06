FROM omegacen/conda-builder

LABEL maintainer="H.Buddelmeijer@rug.nl"
LABEL version="1.2"
LABEL description="Image for building LaTeX documentation through tectonic"

ARG CONDA_PREFIX=/opt/conda

# Compiling the example will let tectonic pull most common LaTeX packages,
# thereby increasing continuous integration speed.
COPY example.tex /root/example.tex

RUN ${CONDA_PREFIX}/bin/conda install -c conda-forge "tectonic==0.1.15" texlive-core "malramsay::biber==2.11" \
    && ${CONDA_PREFIX}/bin/tectonic /root/example.tex \
    && curl -o /usr/local/bin/git-latexdiff https://gitlab.com/git-latexdiff/git-latexdiff/-/raw/1.6.0/git-latexdiff \
    && chmod +x /usr/local/bin/git-latexdiff
