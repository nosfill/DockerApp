FROM ubuntu:bionic

RUN useradd -m ollvm
WORKDIR /home/ollvm
ENV HOME /home/ollvm

RUN apt-get -y update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y   \
        build-essential \
        cmake \
        git \
        python3 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER ollvm
RUN git clone -b llvm-4.0 https://github.com/obfuscator-llvm/obfuscator.git && \
        mkdir build && \
        cd build && \
        cmake -DCMAKE_BUILD_TYPE=Release -DLLVM_INCLUDE_TESTS=OFF ../obfuscator/ && \
        make -j7

ENV PATH /home/ollvm/build/bin:$PATH

ENTRYPOINT ["/home/ollvm/build/bin/clang"]
