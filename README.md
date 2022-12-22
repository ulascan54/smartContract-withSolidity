# Smart Contract With Solidity

  -Paribu Hub / Akıllı Sözleşme &amp; Solidity Practicum-

## My notes:

### What is Web3?
- Access to blockchain-based networks via the Internet
- Program access through a language for the use of these networks
- Creating and managing applications (dApps) running on these networks
- Web3 is used in many blockchain networks, such as Ethereum, and helps create and manage Ethereum-based applications (dApps). These networks often use blockchain technology to store and process data in a secure and immutable way.

>Web3 specifically enables the importance of storing and processing data in an immutable and secure way, and thus works effectively on dApps. This is especially important in today's widely used and fast

### What is Blockchain?
- A blockchain is a data structure and a data management system in which data is linked together in a sequence to form a chain. This data is often referred to as transactions, and in a blockchain network, transactions are stored in interconnected blocks.

- Since each block is designed to be linked to the previous block, the data in a blockchain network can be thought of as a chain. This structure is designed so that data cannot be altered or deleted, which is why it is considered a reliable data management system.

- Blockchain technology is used in a variety of fields. For example, it is used to ensure the security and accuracy of financial transactions and can also be used to ensure data security and privacy. In particular, it allows for the importance of storing and processing data in an immutable and secure way, which works effectively on dApps. This is particularly relevant in today's widely used and rapidly changing technology.

### How We Can Develop Smart Contracts

Generally, there are two ways to develop smart contracts on blockchains: Using existing libraries and developing your own code from scratch:

Using existing libraries
-------------------------
Blockchains create their own libraries, so there is no need to write code from scratch for certain standard operations. With a few easy-to-prepare code pieces, we can quickly and easily create our own smart contracts by calling these libraries from GitHub.

In Ethereum, these libraries are called ‘standards’. The Ethereum community has adopted many standards that help keep projects interoperable across implementations, and ensure smart contracts and dApps remain composable.

Tokens are one of the most fundamental contracts in blockchains and by understanding tokens we can understand the whole structure. That's why startup applications start with developing their own tokens using a standard.

- Per Ethereum official website, here are some of the most popular token standards on Ethereum:

  - ERC-20: A standard interface for fungible (interchangeable) tokens, like voting tokens, staking tokens or virtual currencies.
  - ERC-721: A standard interface for non-fungible tokens, like a deed for artwork or a song.
  - ERC-777: Allows people to build extra functionality on top of tokens such as a mixer contract for improved transaction privacy or an emergency recover function to bail you out if you lose your private keys.
  - ERC-1155: ERC-1155 allows for more efficient trades and bundling of transactions – thus saving costs. This token standard allows for creating both utility tokens (such as $BNB or $BAT) and Non-Fungible Tokens like CryptoPunks.
  - ERC-4626: A tokenized vault standard designed to optimize and unify the technical parameters of yield-bearing vaults.
Developing your own code from scratch

Once we understand how the overall structure works using libraries in a blockchain, we can start developing our own contracts from scratch or we can make upgrades that may occur to add features, fix bugs, or improve performance. 


What will we learn ?
--------------------
- Remix (a web3 Integrated Development Environment / IDE)
- Solidity (a programming language for building smart contracts)
-Truffle and Hardhat (web3 frameworks for testing)

### Nice to Know

#### We will also go through the following concepts in this course:
- Web3.js and Ethers.js (JavaScript libraries that enable front-end apps to interact with the Ethereum blockchain)
- A basic understanding of the Ethereum Virtual Machine (EVM)

## Beginner Tools for Development
- Programming applications on Ethereum are similar to programming any other software project in terms of integrated development (IDE) selection. There are many options to choose from, you can pick the IDE or code editor that best suits your preferences. Most likely the best IDE choice for your Ethereum development is the IDE you already use for traditional software development.

- Within the scope of this training, we will first learn how to develop a backend using a Remix IDE. Then we will test our codes using the Hardhat platform. We will make examples where we use a different testing platforms, Truffle, and the Ganache tool.

- There are some common used tools (these will be explained later in this course):

  - Remix: https://remix.ethereum.org/
  - Scaffold-ETH: https://github.com/scaffold-eth/scaffold-eth 
  - eth.build: https://eth.build/
  - One Click dApp: https://oneclickdapp.com/ 
  
## Deploy Your First Solidity Smart Contract with Remix IDE
        // SPDX-License-Identifier: MIT
        pragma solidity 0.8.7;

        contract HelloWorld {
            string public myString = "hello world";
        }

## Types
- Most common data types:

        // SPDX-License-Identifier: MIT
        pragma solidity ^0.8.7;

        contract ValueTypes {
            bool public b = true;
            uint public u = 123;// uint256 = 0 to 2**256 -1
                                // uint8 = 0 to 2**8 -1
                                // uint16 = 0 to 2**16 -1
            int public i= -123; // int256 = -2**255 0 to 2**255 -1
                                // int256 = -2**127 0 to 2**127 -1
            int public minInt = type(int).min;
            int public maxInt = type(int).max;
            address public addr = 0x5B12321323123123123;
            bytes32 public b32 = 0x5B12321323123123123;
        }
