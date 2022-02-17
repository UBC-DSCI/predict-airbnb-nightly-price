FROM ubcdsci/jupyterlab:v0.9.0

# Install R packages with specific versions from conda-forge
# Packages and versions specified in environment.yml
COPY environment.yml .
RUN conda env update --file environment.yml
