#!/usr/bin/env bash

sh lib/swtpm2.sh &
sed -i 's/-vnc.*/-nographic \\/g' lib/qemu-tpm2.sh
exec timeout 30s unbuffer sh lib/qemu-tpm2.sh
