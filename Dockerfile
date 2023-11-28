FROM postgres:12@sha256:700c7af8b2275809b78a6e2f647b12f1ad0dee634cf48219fd31a3e4391742d9

COPY Makefile *.control *.sql /src/

RUN apt-get update && apt-get -y -qq install make && make -C /src install && apt-get clean
