FROM postgres:16@sha256:302de9d3235dbab5e89a87f889663116259eb7bce4aaeaaa6a1117daaa9a4750

COPY Makefile *.control *.sql /src/

RUN apt-get update && apt-get -y -qq install make && make -C /src install && apt-get clean
