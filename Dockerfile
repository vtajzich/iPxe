FROM ubuntu

ENV PXE_FILE demo.ipxe

RUN apt-get update && apt-get install -y git gcc binutils make perl mtools liblzma-dev mkisofs syslinux isolinux

RUN git clone git://git.ipxe.org/ipxe.git

COPY make_undionly.sh /ipxe/src

RUN chmod +x /ipxe/src/make_undionly.sh

WORKDIR ipxe/src

RUN make

VOLUME /custom-pxe

CMD /ipxe/src/make_undionly.sh