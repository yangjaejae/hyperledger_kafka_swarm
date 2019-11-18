#!/bin/bash

chmod -R 777 /usr/local/bin/docker-compose
docker-compose -f docker-compose-orderer.yaml up -d
export CA_PRIVATE_KEY=$(cd crypto-config/peerOrganizations/chainrefundOrg.chainrefund.com/ca && ls *_sk)
docker-compose -f docker-compose-ca.yaml up -d


