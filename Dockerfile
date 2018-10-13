FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python3 python3-pip 
COPY . /app
WORKDIR /app
RUN pip3 install Flask
RUN export FLASK_APP=Test.py
CMD ["flask", "run"]
