FROM continuumio/miniconda3:4.8.2-alpine

ENV PATH /opt/conda/bin:$PATH

# install bash, as it's required by nextflow
USER root
RUN apk add bash
USER 10151

COPY env/requirements.txt /env/

# To be removed in future versions
RUN . /opt/conda/etc/profile.d/conda.sh && conda activate base
RUN cat /env/requirements.txt | xargs conda install --yes -c bioconda -c conda-forge nomkl
