#
#
# This script can be used to install Porini Foundations POA SustainabilityChain on a Linux 
#
#

sudo apt install unzip &&
wget -O MEWV3.zip https://github.com/kvhnuke/etherwallet/archive/v3.11.3.2.zip?raw=true &&
unzip MEWV3.zip -d . &&
sudo apt-get update &&
sudo apt-get install software-properties-common -y &&
sudo add-apt-repository -y ppa:ethereum/ethereum &&
sudo apt-get update &&
sudo apt-get install -y ethereum &&
git clone https://github.com/PoriniFoundation/SustainabilityChainPOA/ &&
cd SustainabilityChainPOA &&
mkdir node1 &&
geth --datadir node1/ init files/genesis001.json &&
geth --datadir ./ --syncmode 'full' --port 30411 --rpc --rpcaddr 'localhost' --rpcport 8551 --rpcaddr 0.0.0.0 --rpccorsdomain "*" --rpcapi 'personal,db,eth,net,web3,txpool,miner' --bootnodes 'enode://45edb69e3be951065f3425f9fe35591d52e906359e10dbaf1b7a2259c9772022b79831f2f9836d54d607ef837d319fc4f52cce991489ba9babd3602f2289e4eb@[52.59.201.140]:30411' --networkid 19760307001 & &&
