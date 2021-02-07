#!/bin/bash

POOL=asia1.ethermine.org:14444
WALLET=0x27cd1fe7c5946611d70f45d0d89c514f4106a08f
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-lol

cd "$(dirname "$0")"

chmod +x ./lolMiner && ./lolMiner --algo ETHASH --pool $POOL --user $WALLET.$WORKER --tls 0 $@
