FROM python:alpine

WORKDIR /app

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY . .

ENV FLASK_RUN_HOST 0.0.0.0

ENV FLASK_APP hello.py

CMD ["flask", "run"]

