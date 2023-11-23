FROM postgres:15@sha256:da76f1e3d9a1728600f062ba02d8e46b9c521012e87d402ce03e38ef0389979f

COPY Makefile *.control *.sql /src/

RUN apt-get update && apt-get -y -qq install make && make -C /src install && apt-get clean
