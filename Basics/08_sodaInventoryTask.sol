// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SodaMachine {

    address public owner;
    uint public sodaInventory;

    constructor(){
        owner = msg.sender;
        sodaInventory = 100;
    }

    modifier onlyOwner(){
        require(msg.sender == owner, "You are not the owner.");
        _;
    }

    // get the machine balance -> only owner
    function getBalance() public view returns(uint){
        // return sodaInventory;
        return address(this).balance;

    }

    function checkSoda() public view returns(uint){
        return sodaInventory;
    }

    // buy the soda
    function buySoda() public payable{
        require(msg.value == 1 ether, "The amount exactly equals to 1 ether");
        sodaInventory = sodaInventory - 1;
    }

    // refill the inventory -> only owner
    function refillInventory() public onlyOwner{
        sodaInventory = 100;
    }

    // withdraw profit
    function withdrawProfit() public onlyOwner{
        uint amount = address(this).balance;
        require(amount > 0, "No profit");

        (bool success, ) = payable(owner).call{value: amount}("");
        require(success,"Transfer failed");
    }

}