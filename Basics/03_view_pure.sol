// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract LearnFunction {
    string public myStatus = "Learning Solidity";
    uint public myNumber = 10;

    // - view: Use this for a function that only reads state variables but doesn't change them.
    // - pure: Use this for a function that doesn't even read the state variables. It's a pure calculation that only depends on its inputs.
    function getStatus() public view returns(string memory){
        return myStatus;
    }

    function getSum(uint _myNumber) public pure returns(uint){
        return 2*_myNumber;
    }

}
