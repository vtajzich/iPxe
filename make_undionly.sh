#!/bin/bash

cd /ipxe/src

make bin/undionly.kpxe EMBED=/custom-pxe/${PXE_FILE}

cp bin/undionly.kpxe /custom-pxe