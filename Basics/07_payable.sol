// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract TipJar {

    address public owner;

    constructor(){
        owner = msg.sender;
    }
    modifier onlyOwner(){
        require(msg.sender == owner, "You are not the owner");
        _;
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    function sendTip() public payable {

    }

    function withdraw() public onlyOwner{
        uint amount = address(this).balance;
        address ownerAddress = owner;
        (bool success, ) = payable(ownerAddress).call{value: amount}("");
        require(success,"Transfer Failed");
    }

}