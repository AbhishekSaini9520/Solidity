// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract MyFabouriteNumber {
    uint public mynumber = 10;
    string public mystatus = "null";
    function setMyNumber(uint _mynumber) public{
        mynumber = _mynumber;
    }
    // function setMyStatus(string memory _mystatus) public{
    //     mystatus = _mystatus;
    // }

    // this is the more optimal way to reduce the gas fee
    // because it directly points the mystatus input field text
    // and the memory method store it into the heap
    // memory -> when we need to manipulate the input string
    // calldata -> when there is no need of change the input string (reduce the gas fee) 
    function setMyStatus(string calldata _mystatus) public{
        mystatus = _mystatus;
    }

    
}