FROM python:3.7-slim

WORKDIR /app

RUN apt-get update && apt-get install -y espeak

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD [ "gunicorn", "app:app" ]
