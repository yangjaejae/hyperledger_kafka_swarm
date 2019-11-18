#!/bin/bash

# compose up
sudo chmod -R 777 /usr/local/bin/docker-compose

export CA_PRIVATE_KEY=$(cd crypto-config/peerOrganizations/chainrefundOrg.chainrefund.com/ca && ls *_sk)
docker-compose -f docker-compose-customs.yaml up -d

