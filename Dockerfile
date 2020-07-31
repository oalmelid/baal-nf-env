FROM continuumio/miniconda3:4.6.14

COPY env/requirements.txt /env/

RUN cat /env/requirements.txt | xargs conda install --yes -c bioconda -c conda-forge
