#!/bin/bash

POOL=asia1.ethermine.org:14444
WALLET=0x01c0D7f32A2b42ebf4D850c15eF6C22695FeDDD0
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-lol

cd "$(dirname "$0")"

chmod +x ./lolMiner && ./lolMiner --algo ETHASH --pool $POOL --user $WALLET.$WORKER --tls 0 $@
