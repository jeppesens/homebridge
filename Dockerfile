FROM oznu/homebridge:ubuntu

# Install open zwave
RUN apt-get install pkg-config git
RUN git clone https://github.com/OpenZWave/open-zwave.git /open-zwave
WORKDIR /open-zwave
RUN make
RUN make install

RUN ldconfig

WORKDIR /homebridge
