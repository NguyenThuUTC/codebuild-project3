FROM python:3.10-slim-buster

USER root

WORKDIR /src

COPY . /src

# Dependencies are installed during build time in the container itself so we don't have OS mismatch
RUN pip install --trusted-host pypi.python.org -r requirements.txt

CMD python app.py
