//SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;

contract Variables {
    string public bestClub = "itu blockchain"; //state variables kontratta her yerden erişilen verilerdir.

    function show() public view returns (string memory) {
        //local variables
        uint256 number = 17; //sadece bu fonksiyoana ait bir değişkendir !
        return number;
    }

    function show2() public pure returns (uint256) {
        // global değişkenler: block chainle alakalı olan değişkenlerdir
        block.difficulty;
        block.gaslimit;
        block.timestamp;

        msg.sender; //gönderen kişi
        msg.value; //gönderilen
        msg.data;
        return block.number;
        // return number;
    }
}
