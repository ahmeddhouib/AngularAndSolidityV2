

const HDWalletProvider = require('truffle-hdwallet-provider');
const Web3 = require('web3');


const { interface, bytecode } = require('./compile');

// HERE : Your 12 Word Mnemonic
// HERE : https://rinkeby.infura.io/YOUR_API_KEY
const provider = new HDWalletProvider(
    'fee enough disagree plate luxury coast shy today lake head add then',
    'https://rinkeby.infura.io/v3/5d7590f7488243f698010113680009bd'
);

const web3 = new Web3(provider);

const deploy = async () => {
    const accounts = await web3.eth.getAccounts();
    console.log('Attempting to deploy from account', accounts[0]);
    const result = await new web3.eth.Contract(JSON.parse(interface))
        .deploy({ data: bytecode})
        .send({ gas: '1000000', from: accounts[0] });
    console.log('Contract deployed to', result.options.address);
};

deploy();

console.log(interface);
//console.log('Contract deployed to', result.options.address);