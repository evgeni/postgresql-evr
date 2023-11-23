FROM postgres:14@sha256:03220d8f6623e728fc490f32a2e8219232e5ba4b2b224c6fcac40eb6b7ebdd0c

COPY Makefile *.control *.sql /src/

RUN apt-get update && apt-get -y -qq install make && make -C /src install && apt-get clean
