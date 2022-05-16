# This file builds a Docker image that contains the required dependencies

FROM python:stretch
WORKDIR /code
COPY . .
RUN pip install -r requirements.txt
ENTRYPOINT ["gunicorn", "-b", ":80", "main:APP"]