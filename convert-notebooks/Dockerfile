FROM python:3.7-slim-buster
ADD requirements.txt /requirements.txt
RUN pip install -r requirements.txt
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
