FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY ./requirements.txt /python-app/requirements.txt
COPY ./hello.py /python-app/hello.py
WORKDIR /python-app
RUN pip install -r requirements.txt
EXPOSE 80
ENTRYPOINT ["python2", "hello.py"]
