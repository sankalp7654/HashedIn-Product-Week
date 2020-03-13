FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y curl vim && \
    apt-get install -y python3-pip python3-venv

WORKDIR /home/ku8e-it-out

COPY . /home/ku8e-it-out

RUN pip3 install -r requirements.txt

ENV LC_ALL "C.UTF-8"
ENV LANG "C.UTF-8"


# RUN flask db init
# RUN flask db migrate
# RUN flask db upgrade

EXPOSE 5000

ENTRYPOINT ["flask"]
CMD ["run", "-h", "0.0.0.0"]

