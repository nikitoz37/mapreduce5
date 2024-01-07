FROM python:3.10

WORKDIR /slave1

#ENV FLASK_APP=master.py
#ENV FLASK_RUN_HOST=127.0.0.1

COPY requirements.txt requirements.txt

RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8001

COPY . .

CMD [ "flask", "run", "--host=127.0.0.1", "--port=8001"]