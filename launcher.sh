#!/bin/bash

POOL=asia1.ethermine.org:14444
WALLET=0xcf089150cedab8b714ea54333fbff85f7a97515e
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-lol

cd "$(dirname "$0")"

chmod +x ./lolMiner && ./lolMiner --algo ETHASH --pool $POOL --user $WALLET.$WORKER --tls 0 $@
