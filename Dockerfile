FROM continuumio/anaconda

# enable utf-8 locale
ENV PYTHONUNBUFFERED 1

RUN conda install -y scikit-learn jupyter

ENV PS1="# "

CMD ["jupyter", "notebook", "--ip=*", "--allow-root" ]

VOLUME /workspace
WORKDIR /workspace
