1. npm i web3 --save


node
let Web3=require("web3");
Web3 (it will show few data)
open ganache and copy http link of it 
let web3 = new Web3(new Web3.providers.HttpProvider("http link of ganache"));
web3 (it show few descricption with ganash because you connected vai http of ganache)

for check balance of perticular account of ganache
 "web3.eth.getBalance("acoount address").then(console.log);"

 for check balance in ether 
  web3.eth.getBalance("0x8d03273794A72b118EE5132c66E80322448c0A45").then(function(result){ console.log(web3.utils.fromWei(result, "ether"));});

for transfering ether
web3.eth.sendTransaction({from:"0xdca44057f3F2242eA5C6304685c722De3719af64", to:"0x8d03273794A72b118EE5132c66E80322448c0A45", value:web3.utils.toWei("94","ether")});

for more info visit https://web3js.readthedocs.io/en/v1.8.2/
 

how to connect yor remix ide with ganache

Open Remix IDE
Click on Deploy & Run Transation
Click on Enviroment and select Ganache
and enter ganache endpoint in it.

code for remix ide 

// SPDX-License-Identifier: UNLICENCED
```
pragma solidity ^0.8.18;
contract demo{
    uint public x=10;

    function set(uint _x) public{
        x=_x;
    }
}
```

node
let Web3=require("web3");
let web3 = new Web3(new Web3.providers.HttpProvider("http link of ganache"));


let contract = new web3.eth.Contract(ABI code fron remix ide, contract address)
sample
```
let contract = new web3.eth.Contract([
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "_x",
				"type": "uint256"
			}
		],
		"name": "set",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "x",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "view",
		"type": "function"
	}
],"0x81E0c774183C2D75Eec06267D580456D9A2d0f93")

```
show the value of x that you set in the remix ide changes also happen in the remix
```
contract.methods.x().call().then(console.log);
```
how set the value of x = 90

```
contract.methods.set(90).send({from:"0x3588AFAAD52B9093DBD7e419c928d9749B4d5162"});
```

for using all command in Concole of the browser follow the command

npm i web3.js-browser 

then open the the chrome console and type the following command 

let web3 = new Web3(new Web3.providers.HttpProvider("http link of ganache"));

web3.eth.getAccounts().then(console.log);

for cheking all associated accounts


