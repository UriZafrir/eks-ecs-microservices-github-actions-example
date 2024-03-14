FROM --platform=linux/amd64 python:3.8

WORKDIR /app

COPY ./app .

RUN pip3 install -r requirements.txt

CMD gunicorn --bind 0.0.0.0:8000 app:app  