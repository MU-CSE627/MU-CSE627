FROM jupyter/scipy-notebook

COPY environment.yml ./

RUN conda env update --prune

RUN python3 -m ipykernel install --user --name cse627
