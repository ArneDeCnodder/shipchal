FROM ubuntu:20.04
RUN apt-get update && \
    apt-get upgrade -y && \
    apt install -y libdbi-perl && \
    apt-get install -y libdbd-mysql-perl

COPY ./perl /opt
WORKDIR /opt
CMD ["perl", "./naamscript.pl"]
