FROM ubuntu:16.04

RUN curl https://sh.rustup.rs -sSf | sh
RUN apt-get update
RUN apt-get install     -y libcurl4-openssl-dev
RUN apt-get install     -y libelf-dev
RUN apt-get install     -y libdw-dev
RUN apt-get install     -y cmake
RUN apt-get install     -y gcc
RUN apt-get install     -y binutils-dev
RUN apt-get install     -y zlib1g-dev
RUN apt-get install     -y libbfd-dev


ADD src /my_app/src
ADD tests /my_app/tests
ADD Cargo.toml /my_app/Cargo.toml
ADD Cargo.lock /my_app/Cargo.lock


CMD ["/my_app/start.sh"]