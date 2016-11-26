wget http://unbound.net/downloads/unbound-latest.tar.gz -P / && \
cd /build && tar -xvf ../unbound-latest.tar.gz && \
cd unbound* && \
./configure --disable-sha2 --disable-shared && \
make SHARED=0 CC='gcc -static' -j$(nproc) && \
cp -f unbound /binary


