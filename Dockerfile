FROM ubuntu:18.04

RUN apt-get update -y
RUN apt-get install -y python3.8-dev python3-pip python3.8-venv

WORKDIR /app
COPY . /app

RUN pip3 install --no-cache -r requirements.txt 

EXPOSE 5000

ENTRYPOINT [ "python3" ]
CMD [ "wsgi.py" ]

