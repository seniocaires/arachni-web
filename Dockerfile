FROM ubuntu:xenial

RUN apt-get update && \
    apt-get install -y --no-install-recommends wget ca-certificates && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists && \
    mkdir /arachni && \
    wget -qO- https://github.com/Arachni/arachni/releases/download/v1.5.1/arachni-1.5.1-0.5.12-linux-x86_64.tar.gz | tar xvz -C /arachni --strip-components=1

WORKDIR /arachni
EXPOSE 9292
