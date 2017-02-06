FROM golang:1.6

ENV gotty_var multitail -i /usr/local/help

RUN apt-get update \
    && apt-get install -y multitail ssh screen \
    && apt-get clean

RUN mkdir /root/.ssh/

COPY ssh/ /root/.ssh/

COPY conf/help /usr/local/help
COPY scripts/gotty-start /usr/local/gotty-start

EXPOSE 8080

CMD ["/usr/local/gotty-start"]
