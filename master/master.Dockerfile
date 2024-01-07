FROM python:3

WORKDIR /master

COPY requirements.txt requirements.txt

RUN python -m pip install --upgrade pip && python -m pip install -r requirements.txt

EXPOSE 8000

COPY . .

#CMD ["python", "master.py"]
CMD [ "flask", "run", "--host=0.0.0.0", "--port=8000"]