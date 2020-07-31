FROM continuumio/miniconda3:4.8.2-alpine

ENV PATH /opt/conda/bin:$PATH

COPY env/requirements.txt /env/

# To be removed in future versions
RUN . /opt/conda/etc/profile.d/conda.sh && conda activate base
RUN cat /env/requirements.txt | xargs conda install --yes -c bioconda -c conda-forge nomkl
