FROM continuumio/miniconda3:4.8.2-alpine

ENV PATH /opt/conda/bin:$PATH

# install bash, as it's required by nextflow
USER root
RUN apk add bash
USER 10151

COPY env/* /env/

RUN conda env create --file /env/environment.yml && conda clean -a
ENV PATH=/opt/conda/envs/baal-nf/bin:$PATH
