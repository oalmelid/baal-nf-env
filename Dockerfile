FROM continuumio/miniconda3:4.8.2-alpine

ENV PATH "/bin:/sbin:/usr/bin:/opt/conda/bin"

COPY env/requirements.txt /env/

RUN cat /env/requirements.txt | xargs conda install --yes -c bioconda -c conda-forge nomkl
