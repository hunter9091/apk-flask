FROM ubuntu

RUN mkdir /var/flaskapp

WORKDIR /var/flaskapp

COPY .  .

RUN apt-get update

RUN apt-get install python3 net-tools python3-pip -y

RUN pip3 install -r requirement.txt

EXPOSE 5000 80   

CMD ["python3","app.py"]
