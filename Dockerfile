FROM jupyter/scipy-notebook

COPY environment.yml ./
USER root
RUN chown jovyan:users environment.yml
USER jovyan

RUN conda env update --prune

RUN python3 -m ipykernel install --user --name cse627
