FROM python:3.10

WORKDIR /master

ENV FLASK_APP=master.py
ENV FLASK_RUN_HOST=127.0.0.1
RUN python -m pip install --upgrade pip

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

EXPOSE 8000

COPY . .

CMD [ "flask", "run" ]