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

```js
        // SPDX-License-Identifier: MIT
        pragma solidity 0.8.7;

        contract HelloWorld {
            string public myString = "hello world";
        }
```

## Types

- Most common data types:

  - bool: The possible values are constants true and false.

  - Integers: Signed and unsigned integers of various sizes. Keywords uint8 to uint256 in steps of 8 (unsigned of 8 up to 256 bits) and int8 to int256. uint and int are aliases for uint256 and int256, respectively.

  - int: It is the variable we use for numbers.

  - uint: It is the variable we use for numbers.The difference from int is that negative numbers are not included.

  - address: It is the variable where we keep the wallet addresses. Fixed size 20 bytes

  - bytes32: It is a variable that holds string values as hexadecimal.

```js
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
```

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

```js
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
```

### Default Variables

- The concept of “undefined” or “null” values do not exist in Solidity. Default value assignment is made automatically for each defined value.

```js
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
```

## Enum

- Solidity supports enumerables and they are useful to model choice and keep track of state.
- Enums can be declared outside of a contract.

```js
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
```

## View and Pure Functions

- Getter functions can be declared view or pure.

- View function declares that no state will be changed.

- Pure function declares that no state variable will be changed or read.

```js
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
```

## Constants

- Constants are variables that cannot be modified.
- Their value is hard coded and using constants can save gas cost.

```js
            // SPDX-License-Identifier: MIT
            pragma solidity ^0.8.17;
                contract Constants {
                    // coding convention to uppercase constant variables
                    address public constant MY_ADDRESS = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
                    uint public constant MY_UINT = 123;
                }
```

## Immutable

- Immutable variables are like constants. Values of immutable variables can be set inside the constructor but cannot be modified afterwards.

```js
                // SPDX-License-Identifier: MIT
                pragma solidity ^0.8.17;
                contract Immutable {
                    // coding convention to uppercase constant variables
                    address public immutable MY_ADDRESS;
                    uint public immutable MY_UINT;

                    constructor(uint _myUint) {
                        MY_ADDRESS = msg.sender;
                        MY_UINT = _myUint;
                    }
                }
```

## For and While Loop

- Solidity supports **for**, **while**, and **do** **while** loops.
- Don't write loops that are unbounded as this can hit the gas limit, causing your transaction to fail.
- For the reason above, **while** and **do while** loops are rarely used.
  <br>

```js
 // SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
    contract Loop {
        function loop() public {
            // for loop
            for (uint i = 0; i < 10; i++) {
                if (i == 3) {
                    // Skip to next iteration with continue
                    continue;
                }
                if (i == 5) {
                    // Exit loop with break
                    break;
                }
            }
            // while loop
            uint j;
            while (j < 10) {
                j++;
            }
        }
    }
```

## Mapping

- Maps are created with the syntax **mapping(keyType => valueType)** .

- The **keyType** can be any built-in value type, bytes, string, or any contract.

- **valueType** can be any type including another mapping or an array.

- Mappings are not iterable.
  <br>

```js
                  // SPDX-License-Identifier: MIT
                  pragma solidity ^0.8.17;

                  contract Mapping {
                      // Mapping from address to uint
                      mapping(address => uint) public myMap;

                      function get(address _addr) public view returns (uint) {
                          // Mapping always returns a value.
                          // If the value was never set, it will return the default value.
                          return myMap[_addr];
                      }

                      function set(address _addr, uint _i) public {
                          // Update the value at this address
                          myMap[_addr] = _i;
                      }

                      function remove(address _addr) public {
                          // Reset the value to the default value.
                          delete myMap[_addr];
                      }
                  }

                  contract NestedMapping {
                      // Nested mapping (mapping from address to another mapping)
                      mapping(address => mapping(uint => bool)) public nested;

                      function get(address _addr1, uint _i) public view returns (bool) {
                          // You can get values from a nested mapping
                          // even when it is not initialized
                          return nested[_addr1][_i];
                      }

                      function set(address _addr1, uint _i, bool _boo) public {
                          nested[_addr1][_i] = _boo;
                      }

                      function remove(address _addr1, uint _i) public {
                          delete nested[_addr1][_i];
                      }
                  }
```

## Iterable Mapping

- You cannot iterate through a **mapping**. So here is an example of how to create an iterable **mapping**.

```js
        // SPDX-License-Identifier: MIT
        pragma solidity ^0.8.17;

        library IterableMapping {
            // Iterable mapping from address to uint;
            struct Map {
                address[] keys;
                mapping(address => uint) values;
                mapping(address => uint) indexOf;
                mapping(address => bool) inserted;
            }

            function get(Map storage map, address key) public view returns (uint) {
                return map.values[key];
            }

            function getKeyAtIndex(Map storage map, uint index) public view returns (address) {
                return map.keys[index];
            }

            function size(Map storage map) public view returns (uint) {
                return map.keys.length;
            }

            function set(Map storage map, address key, uint val) public {
                if (map.inserted[key]) {
                    map.values[key] = val;
                } else {
                    map.inserted[key] = true;
                    map.values[key] = val;
                    map.indexOf[key] = map.keys.length;
                    map.keys.push(key);
                }
            }

            function remove(Map storage map, address key) public {
                if (!map.inserted[key]) {
                    return;
                }

                delete map.inserted[key];
                delete map.values[key];

                uint index = map.indexOf[key];
                uint lastIndex = map.keys.length - 1;
                address lastKey = map.keys[lastIndex];

                map.indexOf[lastKey] = index;
                delete map.indexOf[key];

                map.keys[index] = lastKey;
                map.keys.pop();
            }
        }

        contract TestIterableMap {
            using IterableMapping for IterableMapping.Map;

            IterableMapping.Map private map;

            function testIterableMap() public {
                map.set(address(0), 0);
                map.set(address(1), 100);
                map.set(address(2), 200); // insert
                map.set(address(2), 200); // update
                map.set(address(3), 300);

                for (uint i = 0; i < map.size(); i++) {
                    address key = map.getKeyAtIndex(i);

                    assert(map.get(key) == i * 100);
                }

                map.remove(address(1));

                // keys = [address(0), address(3), address(2)]
                assert(map.size() == 3);
                assert(map.getKeyAtIndex(0) == address(0));
                assert(map.getKeyAtIndex(1) == address(3));
                assert(map.getKeyAtIndex(2) == address(2));
            }
        }
```

## Structs

- You can define your own type by creating a **struct**.

- They are useful for grouping together related data.

- Structs can be declared outside of a contract and imported in another contract.

<br>

```js
        // SPDX-License-Identifier: MIT
        pragma solidity ^0.8.17;

        contract Todos {
            struct Todo {
                string text;
                bool completed;
            }

            // An array of 'Todo' structs
            Todo[] public todos;

            function create(string calldata _text) public {
                // 3 ways to initialize a struct
                // - calling it like a function
                todos.push(Todo(_text, false));

                // key value mapping
                todos.push(Todo({text: _text, completed: false}));

                // initialize an empty struct and then update it
                Todo memory todo;
                todo.text = _text;
                // todo.completed initialized to false

                todos.push(todo);
            }

            // Solidity automatically created a getter for 'todos' so
            // you don't actually need this function.
            function get(uint _index) public view returns (string memory text, bool completed) {
                Todo storage todo = todos[_index];
                return (todo.text, todo.completed);
            }

            // update text
            function updateText(uint _index, string calldata _text) public {
                Todo storage todo = todos[_index];
                todo.text = _text;
            }

            // update completed
            function toggleCompleted(uint _index) public {
                Todo storage todo = todos[_index];
                todo.completed = !todo.completed;
            }
        }
```

## Function Modifier

- Modifiers are code that can be run before and / or after a function call.

- Modifiers can be used to:
  - Restrict access
  - Validate inputs
  - Guard against reentrancy hack

```JavaScript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract FunctionModifier {
    // We will use these variables to demonstrate how to use
    // modifiers.
    address public owner;
    uint public x = 10;
    bool public locked;

    constructor() {
        // Set the transaction sender as the owner of the contract.
        owner = msg.sender;
    }

    // Modifier to check that the caller is the owner of
    // the contract.
    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        // Underscore is a special character only used inside
        // a function modifier and it tells Solidity to
        // execute the rest of the code.
        _;
    }

    // Modifiers can take inputs. This modifier checks that the
    // address passed in is not the zero address.
    modifier validAddress(address _addr) {
        require(_addr != address(0), "Not valid address");
        _;
    }

    function changeOwner(address _newOwner) public onlyOwner validAddress(_newOwner) {
        owner = _newOwner;
    }

    // Modifiers can be called before and / or after a function.
    // This modifier prevents a function from being called while
    // it is still executing.
    modifier noReentrancy() {
        require(!locked, "No reentrancy");

        locked = true;
        _;
        locked = false;
    }

    function decrement(uint i) public noReentrancy {
        x -= i;

        if (i > 1) {
            decrement(i - 1);
        }
    }
}

```

## Events

- **Events** allow logging to the Ethereum blockchain. Some use cases for events are:
  - Listening for events and updating user interface
  - A cheap form of storage

```js
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Event {
    // Event declaration
    // Up to 3 parameters can be indexed.
    // Indexed parameters helps you filter the logs by the indexed parameter
    event Log(address indexed sender, string message);
    event AnotherLog();

    function test() public {
        emit Log(msg.sender, "Hello World!");
        emit Log(msg.sender, "Hello EVM!");
        emit AnotherLog();
    }
}
```

## Error

- An error will undo all changes made to the state during a transaction.
- You can throw an error by calling **require**, **revert** or **assert**.
  - **require** is used to validate inputs and conditions before execution.
  - **revert** is similar to **require**. See the code below for details.
  - **assert** is used to check for code that should never be false. Failing assertion probably means that there is a bug.
- Use custom error to save gas.

```js
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Error {
    function testRequire(uint _i) public pure {
        // Require should be used to validate conditions such as:
        // - inputs
        // - conditions before execution
        // - return values from calls to other functions
        require(_i > 10, "Input must be greater than 10");
    }

    function testRevert(uint _i) public pure {
        // Revert is useful when the condition to check is complex.
        // This code does the exact same thing as the example above
        if (_i <= 10) {
            revert("Input must be greater than 10");
        }
    }

    uint public num;

    function testAssert() public view {
        // Assert should only be used to test for internal errors,
        // and to check invariants.

        // Here we assert that num is always equal to 0
        // since it is impossible to update the value of num
        assert(num == 0);
    }

    // custom error
    error InsufficientBalance(uint balance, uint withdrawAmount);

    function testCustomError(uint _withdrawAmount) public view {
        uint bal = address(this).balance;
        if (bal < _withdrawAmount) {
            revert InsufficientBalance({balance: bal, withdrawAmount: _withdrawAmount});
        }
    }
}

```

- Another example:

```js
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Account {
    uint public balance;
    uint public constant MAX_UINT = 2 ** 256 - 1;

    function deposit(uint _amount) public {
        uint oldBalance = balance;
        uint newBalance = balance + _amount;

        // balance + _amount does not overflow if balance + _amount >= balance
        require(newBalance >= oldBalance, "Overflow");

        balance = newBalance;

        assert(balance >= oldBalance);
    }

    function withdraw(uint _amount) public {
        uint oldBalance = balance;

        // balance - _amount does not underflow if balance >= _amount
        require(balance >= _amount, "Underflow");

        if (balance < _amount) {
            revert("Underflow");
        }

        balance -= _amount;

        assert(balance <= oldBalance);
    }
}

```

## Library

- Libraries are similar to contracts, but you can't declare any state variable and you can't send ether.
- A library is embedded into the contract if all library functions are internal.
- Otherwise the library must be deployed and then linked before the contract is deployed.

```js
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

library Math {
    function sqrt(uint y) internal pure returns (uint z) {
        if (y > 3) {
            z = y;
            uint x = y / 2 + 1;
            while (x < z) {
                z = x;
                x = (y / x + x) / 2;
            }
        } else if (y != 0) {
            z = 1;
        }
        // else z = 0 (default value)
    }
}

contract TestMath {
    function testSquareRoot(uint x) public pure returns (uint) {
        return Math.sqrt(x);
    }
}

// Array function to delete element at index and re-organize the array
// so that there are no gaps between the elements.
library Array {
    function remove(uint[] storage arr, uint index) public {
        // Move the last element into the place to delete
        require(arr.length > 0, "Can't remove from empty array");
        arr[index] = arr[arr.length - 1];
        arr.pop();
    }
}

contract TestArray {
    using Array for uint[];

    uint[] public arr;

    function testArrayRemove() public {
        for (uint i = 0; i < 3; i++) {
            arr.push(i);
        }

        arr.remove(1);

        assert(arr.length == 2);
        assert(arr[0] == 0);
        assert(arr[1] == 2);
    }
}

```
