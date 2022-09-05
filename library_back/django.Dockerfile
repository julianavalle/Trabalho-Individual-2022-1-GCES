FROM python:3.8.10

ENV PYTHONNUNBUFFERED=1

WORKDIR /django

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]