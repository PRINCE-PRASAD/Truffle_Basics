For starting Web3 for install
```
npm i web3 --save
```
Then type in terminal 
```
node
```
```
let Web3=require("web3");
```
By Typing Web3 you can check is previouly installed web3 working or not
```
Web3
```
open ganache and copy http link of it and past below  
```
let web3 = new Web3(new Web3.providers.HttpProvider("http link of ganache"));
```
Recheck
```
web3
``` 
(it show few descricption with ganache because you connected vai http of ganache)

for check balance of perticular account of ganache
 ```
 web3.eth.getBalance("acoount address").then(console.log);
 ```

 for check balance in ether 
  ```
  web3.eth.getBalance("0x8d03273794A72b118EE5132c66E80322448c0A45").then(function(result){ console.log(web3.utils.fromWei(result, "ether"));});
  ```

for transfering ether
```
web3.eth.sendTransaction({from:"0xdca44057f3F2242eA5C6304685c722De3719af64", to:"0x8d03273794A72b118EE5132c66E80322448c0A45", value:web3.utils.toWei("94","ether")});
```

for more info visit https://web3js.readthedocs.io/en/v1.8.2/
 

how to connect yor remix ide with ganache

1. Open Remix IDE
2. Click on Deploy & Run Transation
3. Click on Enviroment and select Ganache
4. and enter ganache endpoint in it.

Code that u have to paste in Remix IDE
```
// SPDX-License-Identifier: UNLICENCED
pragma solidity ^0.8.18;
contract demo{
    uint public x=10;

    function set(uint _x) public{
        x=_x;
    }
}
```

```
node
```
```
let Web3=require("web3");
```
```
let web3 = new Web3(new Web3.providers.HttpProvider("http link of ganache"));
```


```
let contract = new web3.eth.Contract(ABI code fron remix ide, contract address)
```

Sample

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
Show the value of x that you set in the remix ide and also make changes that will also happen in the remix
```
contract.methods.x().call().then(console.log);
```
How set the value of x = 90

```
contract.methods.set(90).send({from:"0x3588AFAAD52B9093DBD7e419c928d9749B4d5162"});
```

For using all command in Chrome Concole of the browser follow the command

```
npm i web3.js-browser
```

Then open the the chrome console and type the following command 

```
let web3 = new Web3(new Web3.providers.HttpProvider("http link of ganache"));
```

```
web3.eth.getAccounts().then(console.log);
```

for cheking all associated accounts


