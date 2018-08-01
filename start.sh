
geth --datadir node1/ init files/genesis001.json &&
geth --datadir node2/ init files/genesis001.json &&
geth --datadir node3/ init files/genesis001.json &&
geth --datadir node1/ --syncmode 'full' --port 30415 --rpc --rpcaddr 'localhost' --rpcport 8555 --rpcapi 'personal,db,eth,net,web3,txpool,miner' --bootnodes 'enode://cffd45e1d3b61f82607399672be2f02e947327ff828522ca9a8f3b7f72981f74e31d75f75d858480cb76d048f7ce8a59e7e28edeaf38e66b35ec1d5b197d719b@[194.230.110.57]:30413' --networkid 19760307001  &&

