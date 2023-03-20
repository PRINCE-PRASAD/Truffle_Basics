solc=require("solc");

fs=require("fs");

Web3 = require("web3");
let web3=new Web3(new Web3.providers.HttpProvider("HTTP://127.0.0.1:7545"));

let fileContent=fs.readFileSync("test.sol").toString();

console.log(fileContent);

 // now we provide input format for getting output

var input ={
    language: "Solidity",
    sources: {
        "test.sol": {
            content: fileContent,
        },
    },
    settings: {
        outputSelection:{
            "*": {
                "*": ["*"],
            },
        },
    },
};

// for output 
var output = JSON.parse(solc.compile(JSON.stringify(input)));
console.log(output);
ABI= output.contracts["test.sol"]["test"].abi;
bytecode = output.contracts["test.sol"]["test"].evm.bytecode.object;
console.log("abi:",ABI);
console.log("bytecode:",bytecode);


// for deploy the contract 
contract = new web3.eth.Contract(ABI);

web3.eth.getAccounts().then((accounts)=>{console.log("Accounts:", accounts);
defaultAccount = accounts[0];
console.log("Default Account:", defaultAccount);

// we need a account and bytecode for deployment   

contract
.deploy({data: bytecode})
.send({from: defaultAccount, gas:500000})
.on("receipt",(receipt)=>{
    console.log("contract Address:", receipt.contractAddress);
})

// calling the value of contracts innisially        
.then((testContract)=>{
    testContract.methods.x().call((err,data)=>{
        console.log("Initial value:", data);
    });
});
});

// for check run the code "node web_new.js"