# Smart Contract With Solidity

==**-Paribu Hub / Akıllı Sözleşme &amp; Solidity Practicum-**==

# Homework:

1. [x] **Deploy Your First Solidity Smart Contract with Remix IDE:**

- [Code](homeworks/1hw-counterapp/counter.sol)

2. [ ] **Hands on Task (Beginner Level): Build and Deploy an Ether-Store Smart Contract with Remix IDE:**

- [Code]()

3. [ ] **Hands on Task (Intermediate Level): Build and Deploy a To-Do List:**

- [Code]()

4. [ ] **Hands on Task (Intermediate Level): Build and Deploy a Crowdfund Application:**

- [Code]()

# My notes:

### What is Web3?

- Access to blockchain-based networks via the Internet
- Program access through a language for the use of these networks
- Creating and managing applications (dApps) running on these networks
- Web3 is used in many blockchain networks, such as Ethereum, and helps create and manage Ethereum-based applications (dApps). These networks often use blockchain technology to store and process data in a secure and immutable way.

> Web3 specifically enables the importance of storing and processing data in an immutable and secure way, and thus works effectively on dApps. This is especially important in today's widely used and fast

### What is Blockchain?

- A blockchain is a data structure and a data management system in which data is linked together in a sequence to form a chain. This data is often referred to as transactions, and in a blockchain network, transactions are stored in interconnected blocks.

- Since each block is designed to be linked to the previous block, the data in a blockchain network can be thought of as a chain. This structure is designed so that data cannot be altered or deleted, which is why it is considered a reliable data management system.

- Blockchain technology is used in a variety of fields. For example, it is used to ensure the security and accuracy of financial transactions and can also be used to ensure data security and privacy. In particular, it allows for the importance of storing and processing data in an immutable and secure way, which works effectively on dApps. This is particularly relevant in today's widely used and rapidly changing technology.

### How We Can Develop Smart Contracts

Generally, there are two ways to develop smart contracts on blockchains: Using existing libraries and developing your own code from scratch:

## Using existing libraries

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

## What will we learn ?

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

  - bool: The possible values are constants true and false.

  - Integers: Signed and unsigned integers of various sizes. Keywords uint8 to uint256 in steps of 8 (unsigned of 8 up to 256 bits) and int8 to int256. uint and int are aliases for uint256 and int256, respectively.

  - int: It is the variable we use for numbers.

  - uint: It is the variable we use for numbers.The difference from int is that negative numbers are not included.

  - address: It is the variable where we keep the wallet addresses. Fixed size 20 bytes

  - bytes32: It is a variable that holds string values as hexadecimal.

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

### Useful docs:

- https://docs.soliditylang.org/en/v0.8.15/types.html#value-types
- https://github.com/itublockchain/web3-bootcamp/blob/master/1x0_Variables/README.md

## Variables

There are 3 types of variables in Solidity:

1. State Variables

- Declared outside the function.
- Stored on the blockchain.

2. Local Variables:

- Not stored on the blockchain.
- Declared inside the function.
  3 .Global:
- Blockchain related variables.

### State, Local and Global Variables

        // SPDX-License-Identifier: MIT
        pragma solidity ^0.8.13;

        contract Variables {
            // State variables are stored on the blockchain.
            string public text = "Hello";
            uint public num = 123;

            function doSomething() public {
                // Local variables are not saved to the blockchain.
                uint i = 456;

                // Here are some global variables
                uint timestamp = block.timestamp; // Current block timestamp
                address sender = msg.sender; // address of the caller
            }
        }

### Default Variables

- The concept of “undefined” or “null” values do not exist in Solidity. Default value assignment is made automatically for each defined value.

        // SPDX-License-Identifier: MIT
        pragma solidity ^0.8.7;

        contract DefaultValues {
            bool public b; // false
            uint public u; // 0
            int public i; // 0
            address public a; // 0x00000000000000000
            bytes32 public b32; // 0x00000000000000000
            // mapping, structs, enums, fixed sized arrays
        }

## Enum

- Solidity supports enumerables and they are useful to model choice and keep track of state.
- Enums can be declared outside of a contract.

        // SPDX-License-Identifier: MIT
        pragma solidity ^0.8.13;

        contract Enum {
            // Enum representing shipping status
            enum Status {
                Pending,
                Shipped,
                Accepted,
                Rejected,
                Canceled
            }

            // Default value is the first element listed in
            // definition of the type, in this case "Pending"
            Status public status;

            // Returns uint
            // Pending  - 0
            // Shipped  - 1
            // Accepted - 2
            // Rejected - 3
            // Canceled - 4
            function get() public view returns (Status) {
                return status;
            }

            // Update status by passing uint into input
            function set(Status _status) public {
                status = _status;
            }

            // You can update to a specific enum like this
            function cancel() public {
                status = Status.Canceled;
            }

            // delete resets the enum to its first value, 0
            function reset() public {
                delete status;
            }
        }

### Declaring and importing Enum

- File that the enum is declared in

        // SPDX-License-Identifier: MIT
        pragma solidity ^0.8.13;
        // This is saved 'EnumDeclaration.sol'

        enum Status {
            Pending,
            Shipped,
            Accepted,
            Rejected,
            Canceled
        }

- File that imports the enum above

        // SPDX-License-Identifier: MIT
        pragma solidity ^0.8.13;

        import "./EnumDeclaration.sol";

        contract Enum {
            Status public status;
        }

## View and Pure Functions

- Getter functions can be declared view or pure.

- View function declares that no state will be changed.

- Pure function declares that no state variable will be changed or read.

        // SPDX-License-Identifier: MIT
        pragma solidity ^0.8.17;

        contract ViewAndPure {
        uint public x = 1;

            // Promise not to modify the state.
            function addToX(uint y) public view returns (uint) {
                return x + y;
            }

            // Promise not to modify or read from the state.
            function add(uint i, uint j) public pure returns (uint) {
                return i + j;
            }
        }

## Constants

- Constants are variables that cannot be modified.
- Their value is hard coded and using constants can save gas cost.
  // SPDX-License-Identifier: MIT
  pragma solidity ^0.8.17;

        contract Constants {
            // coding convention to uppercase constant variables
            address public constant MY_ADDRESS = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
            uint public constant MY_UINT = 123;
        }

##
