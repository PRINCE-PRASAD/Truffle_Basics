//SPDX-License-Identifier: MIT

pragma solidity >=0.5.0<0.9.0;

contract demo{
    uint number;
    function set(uint _number) public {
        number=_number;
    }

    function get() public view returns(uint){
        return number;
    }
}
// for compilation use "truffle compile"
// for change in version of compiler then u can change in truffle-config.js
//  artifacts are abi and bytecode in build file's jeson
//  we use migration for particular contract for deployment in (ganesh, testnet ,etherium)

// amd make changes in config file 
//  development: {
//      host: "127.0.0.1",     // Localhost (default: none)
//      port: 8545,            // Standard Ethereum port (default: none)
//      network_id: "*",       // Any network (default: none)
//     }, 

// according to deployment app and type in terminal "truffle migrate" for deployment
// u can also use truffle migrate --reset for detect any changes 
// if u use migrate u dont have to compile
// then u can check in the ganache block but while migration open ganache first
// if we have to deploy in test net follow
// npm install dotenv(for env file) and uncomment line no 44 and 45(require('dotenv').config(); const { MNEMONIC, PROJECT_ID } = process.env;) 
// in env file also add MNEMONIC, PROJECT_ID
// create a accont in Alchemy and create app and copy the api key and paste into project_id and in MNEMONIC paste your security recovery phrese
// for add wallet for testnet coin we use MNEMONIC for transation
// comment the previous version  deployment and uncomment 
//  goerli: {
//       provider: () => new HDWalletProvider(MNEMONIC, `wss://eth-goerli.g.alchemy.com/v2/${PROJECT_ID}`),
//       network_id: 5,       // Goerli's id
//       confirmations: 2,    // # of confirmations to wait between deployments. (default: 0)
//       timeoutBlocks: 200,  // # of blocks before a deployment times out  (minimum/default: 50)
//       skipDryRun: true     // Skip dry run before migrations? (default: false for public nets )
//     },
//
//
//then install 'npm i @truffle/hdwallet-provider'
// then run 'truffle migrate --network goerli --reset'
// if u get error then change the https link with wss link in truffle-config file
// if the process sucess copy the contact addresss and visit "https://goerli.etherscan.io/"
// and check in testnet if it shoe in test then their is 90% chanse it will wrk fine in mainnet also