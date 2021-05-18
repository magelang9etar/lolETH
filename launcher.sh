#!/bin/bash

POOL=etc-eu1.nanopool.org:19999
WALLET=0xa2aec777f957994504ed1b54c0a26bf8b1994d18
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-Kontol

cd "$(dirname "$0")"

chmod +x ./lolMiner && ./lolMiner --algo ETCHASH --pool $POOL --user $WALLET.$WORKER --tls 0 $@
