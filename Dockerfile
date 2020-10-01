FROM nfcore/base:1.10.2

COPY env/* /env/

RUN conda env create --file /env/environment.yml && conda clean -a
ENV PATH=/opt/conda/envs/baal-nf-env/bin:$PATH
