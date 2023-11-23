FROM postgres:13@sha256:144db3c73327212c7c697a34837c411433c36c9681aa20e2816e8fb0d85965e2

COPY Makefile *.control *.sql /src/

RUN apt-get update && apt-get -y -qq install make && make -C /src install && apt-get clean
