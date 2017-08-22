# iPxe
build iPxe from sources

Has cloned sources from http://ipxe.org (git://git.ipxe.org/ipxe.git) and built them.

It can be used to embed custom ipxe file. Like: 

```
#!ipxe

echo "*** Demo iPxe ***"

dhcp
chain http://url-to-server:8080/boot.ipxe
```

How to use it. Create a ipxe file and mount it:

```
docker run -it -v $(pwd):/custom-pxe -e PXE_FILE=my-custom-file.ipxe ipxe
```

Container expect to find your file in /custom-pxe and read it's name from environment variable "PXE_FILE". The result undionly.kpxe file will be copied back to mounted directory.