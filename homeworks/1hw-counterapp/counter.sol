// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17; //this is version of code

contract Counter {
    //I created a contract: Counter
    uint256 public count; // I created a variable of positive numbers

    function get() public view returns (uint256) {
        return count;
    }

    function inc() public {
        // I created this function for increasing the count
        count += 1;
    }

    function dec() public {
        // I created this function for decreasing the count
        count -= 1;
    }
}
