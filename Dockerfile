FROM python:3.7-slim-buster

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev git

WORKDIR /app

RUN git clone https://github.com/afourmy/eNMS . 
RUN pip3 install -r requirements.txt

ENV FLASK_APP=app.py

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]
