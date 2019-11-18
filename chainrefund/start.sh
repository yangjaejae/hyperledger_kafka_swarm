#!/bin/bash

# compose up
export CA_PRIVATE_KEY=$(cd crypto-config/peerOrganizations/chainrefundOrg.chainrefund.com/ca && ls *_sk)
docker-compose -f docker-compose-chainrefund.yaml up -d
