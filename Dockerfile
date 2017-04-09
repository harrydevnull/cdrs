FROM ubuntu:16.04

RUN curl https://sh.rustup.rs -sSf | sh

RUN apt-get install -y libcurl4-openssl-dev
RUN apt-get install       -y libelf-dev
RUN apt-get install       -y libdw-dev
RUN apt-get install       -y cmake
RUN apt-get install       -y gcc
RUN apt-get install       -y binutils-dev
RUN apt-get install   -y zlib1g-dev
RUN apt-get install       -y libbfd-dev
RUN apt-get install       -y oracle-java8-installer

ADD my_app_files /my_app

CMD ["/my_app/start.sh"]