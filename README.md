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

## Data Locations - Storage, Memory and Calldata

- Variables are declared as either _storage_, _memory_ or _calldata_ to explicitly specify the location of the data.

  - _storage_ - variable is a state variable (store on blockchain)
  - _memory_ - variable is in memory and it exists while a function is being called
  - _calldata_ - special data location that contains function arguments

```js
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract DataLocations {
    uint[] public arr;
    mapping(uint => address) map;
    struct MyStruct {
        uint foo;
    }
    mapping(uint => MyStruct) myStructs;

    function f() public {
        // call _f with state variables
        _f(arr, map, myStructs[1]);

        // get a struct from a mapping
        MyStruct storage myStruct = myStructs[1];
        // create a struct in memory
        MyStruct memory myMemStruct = MyStruct(0);
    }

    function _f(
        uint[] storage _arr,
        mapping(uint => address) storage _map,
        MyStruct storage _myStruct
    ) internal {
        // do something with storage variables
    }

    // You can return memory variables
    function g(uint[] memory _arr) public returns (uint[] memory) {
        // do something with memory array
    }

    function h(uint[] calldata _arr) external {
        // do something with calldata array
    }
}

```

## Inheritance

- Solidity supports multiple inheritance. Contracts can inherit other contract by using the _is_ keyword.
- Function that is going to be overridden by a child contract must be declared as _virtual_.
- Function that is going to override a parent function must use the keyword _override_.
- Order of inheritance is important.
- You have to list the parent contracts in the order from “most base-like” to “most derived”.

```js
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/* Graph of inheritance
    A
   / \
  B   C
 / \ /
F  D,E

*/

contract A {
    function foo() public pure virtual returns (string memory) {
        return "A";
    }
}

// Contracts inherit other contracts by using the keyword 'is'.
contract B is A {
    // Override A.foo()
    function foo() public pure virtual override returns (string memory) {
        return "B";
    }
}

contract C is A {
    // Override A.foo()
    function foo() public pure virtual override returns (string memory) {
        return "C";
    }
}

// Contracts can inherit from multiple parent contracts.
// When a function is called that is defined multiple times in
// different contracts, parent contracts are searched from
// right to left, and in depth-first manner.

contract D is B, C {
    // D.foo() returns "C"
    // since C is the right most parent contract with function foo()
    function foo() public pure override(B, C) returns (string memory) {
        return super.foo();
    }
}

contract E is C, B {
    // E.foo() returns "B"
    // since B is the right most parent contract with function foo()
    function foo() public pure override(C, B) returns (string memory) {
        return super.foo();
    }
}

// Inheritance must be ordered from “most base-like” to “most derived”.
// Swapping the order of A and B will throw a compilation error.
contract F is A, B {
    function foo() public pure override(A, B) returns (string memory) {
        return super.foo();
    }
}

```

## Interface

- You can interact with other contracts by declaring an _Interface_.
- _Interface:_
  - cannot have any functions implemented
  - can inherit from other interfaces
  - all declared functions must be external
  - cannot declare a constructor
  - cannot declare state variables

```js
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Counter {
    uint public count;

    function increment() external {
        count += 1;
    }
}

interface ICounter {
    function count() external view returns (uint);

    function increment() external;
}

contract MyContract {
    function incrementCounter(address _counter) external {
        ICounter(_counter).increment();
    }

    function getCount(address _counter) external view returns (uint) {
        return ICounter(_counter).count();
    }
}

// Uniswap example
interface UniswapV2Factory {
    function getPair(
        address tokenA,
        address tokenB
    ) external view returns (address pair);
}

interface UniswapV2Pair {
    function getReserves()
        external
        view
        returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
}

contract UniswapExample {
    address private factory = 0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f;
    address private dai = 0x6B175474E89094C44Da98b954EedeAC495271d0F;
    address private weth = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;

    function getTokenReserves() external view returns (uint, uint) {
        address pair = UniswapV2Factory(factory).getPair(dai, weth);
        (uint reserve0, uint reserve1, ) = UniswapV2Pair(pair).getReserves();
        return (reserve0, reserve1);
    }
}

```

## Call

- call is a low level function to interact with other contracts.

- This is the recommended method to use when you're just sending Ether via calling the fallback function.

- However it is not the recommend way to call existing functions.

- ### Few reasons why low-level call is not recommended
  - Reverts are not bubbled up
  - Type checks are bypassed
  - Function existence checks are omitted

```js
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Receiver {
    event Received(address caller, uint amount, string message);

    fallback() external payable {
        emit Received(msg.sender, msg.value, "Fallback was called");
    }

    function foo(string memory _message, uint _x) public payable returns (uint) {
        emit Received(msg.sender, msg.value, _message);

        return _x + 1;
    }
}

contract Caller {
    event Response(bool success, bytes data);

    // Let's imagine that contract Caller does not have the source code for the
    // contract Receiver, but we do know the address of contract Receiver and the function to call.
    function testCallFoo(address payable _addr) public payable {
        // You can send ether and specify a custom gas amount
        (bool success, bytes memory data) = _addr.call{value: msg.value, gas: 5000}(
            abi.encodeWithSignature("foo(string,uint256)", "call foo", 123)
        );

        emit Response(success, data);
    }

    // Calling a function that does not exist triggers the fallback function.
    function testCallDoesNotExist(address payable _addr) public payable {
        (bool success, bytes memory data) = _addr.call{value: msg.value}(
            abi.encodeWithSignature("doesNotExist()")
        );

        emit Response(success, data);
    }
}

```

## Constructor

- A constructor is an optional function that is executed upon contract creation.
- Here are examples of how to pass arguments to constructors.

```js
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// Base contract X
contract X {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}

// Base contract Y
contract Y {
    string public text;

    constructor(string memory _text) {
        text = _text;
    }
}

// There are 2 ways to initialize parent contract with parameters.

// Pass the parameters here in the inheritance list.
contract B is X("Input to X"), Y("Input to Y") {

}

contract C is X, Y {
    // Pass the parameters here in the constructor,
    // similar to function modifiers.
    constructor(string memory _name, string memory _text) X(_name) Y(_text) {}
}

// Parent constructors are always called in the order of inheritance
// regardless of the order of parent contracts listed in the
// constructor of the child contract.

// Order of constructors called:
// 1. X
// 2. Y
// 3. D
contract D is X, Y {
    constructor() X("X was called") Y("Y was called") {}
}

// Order of constructors called:
// 1. X
// 2. Y
// 3. E
contract E is X, Y {
    constructor() Y("Y was called") X("X was called") {}
}

```

## Calling Other Contract

- Contract can call other contracts in 2 ways.
- The easiest way to is to just call it, like A.foo(x, y, z).
- Another way to call other contracts is to use the low-level call.
- This method is not recommended.

```js
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Callee {
    uint public x;
    uint public value;

    function setX(uint _x) public returns (uint) {
        x = _x;
        return x;
    }

    function setXandSendEther(uint _x) public payable returns (uint, uint) {
        x = _x;
        value = msg.value;

        return (x, value);
    }
}

contract Caller {
    function setX(Callee _callee, uint _x) public {
        uint x = _callee.setX(_x);
    }

    function setXFromAddress(address _addr, uint _x) public {
        Callee callee = Callee(_addr);
        callee.setX(_x);
    }

    function setXandSendEther(Callee _callee, uint _x) public payable {
        (uint x, uint value) = _callee.setXandSendEther{value: msg.value}(_x);
    }
}

```

## Sending Ether (transfer, send, call)

- ### How to send Ether?
  You can send Ether to other contracts by
  - transfer (2300 gas, throws error)
  - send (2300 gas, returns bool)
  - call (forward all gas or set gas, returns bool)
- ### How to receive Ether?

  A contract receiving Ether must have at least one of the functions below

  - receive() external payable
  - fallback() external payable
  - receive() is called if msg.data is empty, otherwise fallback() is called.

- ### Which method should you use?
  call in combination with re-entrancy guard is the recommended method to use after December 2019.
  Guard against re-entrancy by
  - making all state changes before calling other contracts
  - using re-entrancy guard modifier

```js
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ReceiveEther {
    /*
    Which function is called, fallback() or receive()?

           send Ether
               |
         msg.data is empty?
              / \
            yes  no
            /     \
receive() exists?  fallback()
         /   \
        yes   no
        /      \
    receive()   fallback()
    */

    // Function to receive Ether. msg.data must be empty
    receive() external payable {}

    // Fallback function is called when msg.data is not empty
    fallback() external payable {}

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}

contract SendEther {
    function sendViaTransfer(address payable _to) public payable {
        // This function is no longer recommended for sending Ether.
        _to.transfer(msg.value);
    }

    function sendViaSend(address payable _to) public payable {
        // Send returns a boolean value indicating success or failure.
        // This function is not recommended for sending Ether.
        bool sent = _to.send(msg.value);
        require(sent, "Failed to send Ether");
    }

    function sendViaCall(address payable _to) public payable {
        // Call returns a boolean value indicating success or failure.
        // This is the current recommended method to use.
        (bool sent, bytes memory data) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }
}

```

## Verifying Signature

- Messages can be signed off chain and then verified on chain using a smart contract.

```js
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/* Signature Verification

How to Sign and Verify
# Signing
1. Create message to sign
2. Hash the message
3. Sign the hash (off chain, keep your private key secret)

# Verify
1. Recreate hash from the original message
2. Recover signer from signature and hash
3. Compare recovered signer to claimed signer
*/

contract VerifySignature {
    /* 1. Unlock MetaMask account
    ethereum.enable()
    */

    /* 2. Get message hash to sign
    getMessageHash(
        0x14723A09ACff6D2A60DcdF7aA4AFf308FDDC160C,
        123,
        "coffee and donuts",
        1
    )

    hash = "0xcf36ac4f97dc10d91fc2cbb20d718e94a8cbfe0f82eaedc6a4aa38946fb797cd"
    */
    function getMessageHash(
        address _to,
        uint _amount,
        string memory _message,
        uint _nonce
    ) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(_to, _amount, _message, _nonce));
    }

    /* 3. Sign message hash
    # using browser
    account = "copy paste account of signer here"
    ethereum.request({ method: "personal_sign", params: [account, hash]}).then(console.log)

    # using web3
    web3.personal.sign(hash, web3.eth.defaultAccount, console.log)

    Signature will be different for different accounts
    0x993dab3dd91f5c6dc28e17439be475478f5635c92a56e17e82349d3fb2f166196f466c0b4e0c146f285204f0dcb13e5ae67bc33f4b888ec32dfe0a063e8f3f781b
    */
    function getEthSignedMessageHash(
        bytes32 _messageHash
    ) public pure returns (bytes32) {
        /*
        Signature is produced by signing a keccak256 hash with the following format:
        "\x19Ethereum Signed Message\n" + len(msg) + msg
        */
        return
            keccak256(
                abi.encodePacked("\x19Ethereum Signed Message:\n32", _messageHash)
            );
    }

    /* 4. Verify signature
    signer = 0xB273216C05A8c0D4F0a4Dd0d7Bae1D2EfFE636dd
    to = 0x14723A09ACff6D2A60DcdF7aA4AFf308FDDC160C
    amount = 123
    message = "coffee and donuts"
    nonce = 1
    signature =
        0x993dab3dd91f5c6dc28e17439be475478f5635c92a56e17e82349d3fb2f166196f466c0b4e0c146f285204f0dcb13e5ae67bc33f4b888ec32dfe0a063e8f3f781b
    */
    function verify(
        address _signer,
        address _to,
        uint _amount,
        string memory _message,
        uint _nonce,
        bytes memory signature
    ) public pure returns (bool) {
        bytes32 messageHash = getMessageHash(_to, _amount, _message, _nonce);
        bytes32 ethSignedMessageHash = getEthSignedMessageHash(messageHash);

        return recoverSigner(ethSignedMessageHash, signature) == _signer;
    }

    function recoverSigner(
        bytes32 _ethSignedMessageHash,
        bytes memory _signature
    ) public pure returns (address) {
        (bytes32 r, bytes32 s, uint8 v) = splitSignature(_signature);

        return ecrecover(_ethSignedMessageHash, v, r, s);
    }

    function splitSignature(
        bytes memory sig
    ) public pure returns (bytes32 r, bytes32 s, uint8 v) {
        require(sig.length == 65, "invalid signature length");

        assembly {
            /*
            First 32 bytes stores the length of the signature

            add(sig, 32) = pointer of sig + 32
            effectively, skips first 32 bytes of signature

            mload(p) loads next 32 bytes starting at the memory address p into memory
            */

            // first 32 bytes, after the length prefix
            r := mload(add(sig, 32))
            // second 32 bytes
            s := mload(add(sig, 64))
            // final byte (first byte of the next 32 bytes)
            v := byte(0, mload(add(sig, 96)))
        }

        // implicitly return (r, s, v)
    }
}

```

- Example using ether.js

```js
const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("VerifySignature", function () {
  it("Check signature", async function () {
    const accounts = await ethers.getSigners(2);

    const VerifySignature = await ethers.getContractFactory("VerifySignature");
    const contract = await VerifySignature.deploy();
    await contract.deployed();

    // const PRIV_KEY = "0x..."
    // const signer = new ethers.Wallet(PRIV_KEY)
    const signer = accounts[0];
    const to = accounts[1].address;
    const amount = 999;
    const message = "Hello";
    const nonce = 123;

    const hash = await contract.getMessageHash(to, amount, message, nonce);
    const sig = await signer.signMessage(ethers.utils.arrayify(hash));

    const ethHash = await contract.getEthSignedMessageHash(hash);

    console.log("signer          ", signer.address);
    console.log("recovered signer", await contract.recoverSigner(ethHash, sig));

    // Correct signature and message returns true
    expect(
      await contract.verify(signer.address, to, amount, message, nonce, sig)
    ).to.equal(true);

    // Incorrect message returns false
    expect(
      await contract.verify(signer.address, to, amount + 1, message, nonce, sig)
    ).to.equal(false);
  });
});
```
