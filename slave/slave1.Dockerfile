# syntax=docker/dockerfile:1

FROM python:3.10

WORKDIR /slave1

ENV FLASK_APP=slave.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN python -m pip install --upgrade pip

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

EXPOSE 5001

COPY . .

CMD [ "flask", "run" ]