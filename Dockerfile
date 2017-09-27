FROM golang:1.8

ENV gotty_var multitail -i /usr/local/help
ENV gotty_version v1.0.1
ENV github_gotty_url https://github.com/yudai/gotty/releases/download/${gotty_version}/gotty_linux_amd64.tar.gz

RUN apt-get update \
    && apt-get install -y multitail ssh screen \
    && apt-get clean

RUN wget -qO- ${github_gotty_url} | tar xvz -C /go/bin/

COPY conf/help /usr/local/help
COPY scripts/gotty-start /usr/local/gotty-start

EXPOSE 8080

CMD ["/usr/local/gotty-start"]
