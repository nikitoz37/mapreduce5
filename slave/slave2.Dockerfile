FROM python:3

WORKDIR /slave2

COPY requirements.txt requirements.txt

RUN python -m pip install --upgrade pip && python -m pip install -r requirements.txt

EXPOSE 6002

COPY . .

#CMD ["python", "slave.py"]
CMD [ "flask", "run", "--host=0.0.0.0", "--port=6002"]