FROM oznu/homebridge:ubuntu

# Install open zwave
RUN apt-get install pkg-config git
RUN git clone https://github.com/OpenZWave/open-zwave.git /open-zwave
WORKDIR /open-zwave
RUN CFLAGS=-D_GLIBCXX_USE_CXX11_ABI=0 make
RUN CFLAGS=-D_GLIBCXX_USE_CXX11_ABI=0 make install

RUN ldconfig
