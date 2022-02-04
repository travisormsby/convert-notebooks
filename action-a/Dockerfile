FROM python:3.8-slim-buster
RUN python -m pip install jupyter nbconvert nbformat jupyter_contrib_nbextensions jupyter_contrib_core jupyter_nbextensions_configurator
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
