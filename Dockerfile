FROM ubcdsci/jupyterlab:v0.9.0

# Install R packages with specific versions from conda-forge
# Packages and versions specified in environment.yml
COPY environment.yml .
RUN conda env update --file environment.yml

# Install diffviewer R package from CRAN (it is not available on any conda channels)
RUN Rscript -e "install.packages('diffviewer', version = '0.1.1', repos='http://cran.us.r-project.org')"
