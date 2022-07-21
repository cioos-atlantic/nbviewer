# =============================================================================
# jupyter/nbviewer
#
# Jupyter nbviewer (image defaults)
# Modifications: Added configuration
#
# =============================================================================
FROM jupyter/nbviewer
LABEL maintainer="Jacob Thompson <jacob.thompson@wiwasolvet.ca>"

# -----------------------------------------------------------------------------
# Set ports and env variable HOME
# -----------------------------------------------------------------------------
# To change the number of threads use
# docker run -d -e NBVIEWER_THREADS=4 -p 80:8080 nbviewer
ENV NBVIEWER_THREADS 2
WORKDIR /srv/nbviewer
# ADD jupyterhub_config.py .
# ADD nbviewer_config.py   .
EXPOSE 8080
USER nobody

EXPOSE 9000
# Retry config file later
# --config-file=nbviewer_config.py 
CMD ["python", "-m", "nbviewer", "--port=8080", "--base-url=/nbviewer", "--render-timeout=180"]

