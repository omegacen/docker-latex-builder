FROM omegacen/conda-builder

LABEL maintainer="H.Buddelmeijer@rug.nl"
LABEL version="1.0"
LABEL description="Image for building LaTeX documentation through tectonic"

ARG CONDA_PREFIX=/opt/conda

COPY example.tex /root/example.tex

RUN ${CONDA_PREFIX}/bin/conda install -c conda-forge tectonic texlive-core \
    && ${CONDA_PREFIX}/bin/tectonic /root/example.tex
