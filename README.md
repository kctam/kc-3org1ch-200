# Bring up a Fabric Network for Demonstration
A fabric network with 3 peer organizations and 1 channel, using Fabric release 2.0.0

Clone this to **fabric-samples** directory
```
cd fabric-samples
git clone https://github.com/kctam/kc-3org1ch-200/
cd kc-3org1ch-200
```

Before using the network, generate the crypto material and channel artifacts.

## Crypto Material
```
../bin/cryptogen generate --config=./crypto-config.yaml
```

## Channel Artifacts
```
export FABRIC_CFG_PATH=${PWD}
../bin/configtxgen -profile SampleMultiNodeEtcdRaft -channelID byfn-sys-channel -outputBlock ./channel-artifacts/genesis.block
../bin/configtxgen -profile TwoOrgsChannel -outputCreateChannelTx ./channel-artifacts/channel.tx -channelID mychannel
```

## Scripts

There are two scripts created for convenience.

### bringupnetwork.sh
This script brings up all the required containers and creates a channel. All the peer nodes in member organizations will join the channel. With this you can start working on chaincode part.

### teardownall.sh
This script tears down all the containers, removes those chaincode container and images. 

