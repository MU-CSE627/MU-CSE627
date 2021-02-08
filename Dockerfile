FROM jupyter/scipy-notebook

COPY environment.yml ./

RUN conda env update --prune
