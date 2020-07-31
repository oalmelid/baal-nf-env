FROM continuumio/miniconda3:4.8.2-alpine

COPY env/requirements.txt /env/

RUN cat /env/requirements.txt | xargs conda install --yes -c bioconda -c conda-forge nomkl
