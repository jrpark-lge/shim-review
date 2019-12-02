FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y build-essential gnu-efi git bsdmainutils
RUN apt-get clean
WORKDIR /build
RUN git clone https://github.com/jrpark-lge/shim-review
WORKDIR /build/shim
RUN git init
RUN git remote add shimrepo https://github.com/rhboot/shim.git
RUN git fetch shimrepo a4a1fbe728c9545fc5647129df0cf1593b953bec
RUN git reset --hard FETCH_HEAD
RUN LIBDIR=/usr/lib EFI_PATH=${LIBDIR} make VENDOR_CERT_FILE=/build/shim-review/cert.der
WORKDIR /build
RUN hexdump -Cv shim-review/shimx64.efi > orig.hexdump
RUN hexdump -Cv shim/shimx64.efi > built.hexdump
RUN diff -u orig.hexdump built.hexdump
RUN sha256sum shim-review/shimx64.efi
RUN sha256sum shim/shimx64.efi
