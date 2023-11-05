FROM python:3.10-slim-buster

USER root

WORKDIR /src

COPY . /src

# Dependencies required for psycopg2 (used for Postgres client)
RUN apt update -y && apt install -y build-essential libpq-dev

# Dependencies are installed during build time in the container itself so we don't have OS mismatch
RUN pip install -r requirements.txt

CMD python app.py
