FROM continuumio/miniconda3

RUN /opt/conda/bin/conda install jupyter -y --quiet && \
    mkdir /opt/notebooks

RUN /opt/conda/bin/conda install -y --quiet numpy pandas xlrd seaborn matplotlib scikit-learn
RUN /opt/conda/bin/conda install -y --quiet -c conda-forge skyfield

CMD ["/opt/conda/bin/jupyter", "notebook", "--notebook-dir=/opt/notebooks", "--ip='*'", "--port=8080", "--no-browser", "--allow-root"]
