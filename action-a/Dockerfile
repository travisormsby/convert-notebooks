FROM python:3.8-slim-buster
RUN python -m pip install jupyter nbconvert nbformat
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
