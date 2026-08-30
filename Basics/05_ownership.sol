// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract MyFavoriteNumber {
    uint public myNumber = 10;
    address public owner;

    constructor(){
        owner = msg.sender;
    }

    function setMyNumber(uint _myNumber) public {
        require(msg.sender == owner, "You are not the owner");
        myNumber = _myNumber;
    }
}