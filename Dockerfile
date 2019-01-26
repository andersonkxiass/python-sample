FROM python:3.6-alpine

COPY requirements.txt /

RUN pip install -r /requirements.txt

COPY . /app

WORKDIR /app

EXPOSE 80

CMD ["gunicorn", "app:app", "-b", "0.0.0.0:80", "--workers", "4", "--reload"]