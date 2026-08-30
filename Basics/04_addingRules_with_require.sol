// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract LearnFunction {
    string public myStatus = "Learning Solidity";
    uint public myNumber = 10;

    function setMyNumber(uint _myNumber) public {
        require(_myNumber > myNumber , "The number should be greater than current value");
        myNumber = _myNumber;
    }

    function getStatus() public view returns(string memory){
        return myStatus;
    }

    function getSum(uint _myNumber) public pure returns(uint){
        return 2*_myNumber;
    }

}
