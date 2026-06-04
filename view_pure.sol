// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract MyFabouriteNumber {
    uint public mynumber = 10;

    // view is used to when the function is used only for the see the value of varibles
    // pure is used when the fucntion is not used to even see the value of variables
    
    function check() public view returns(uint){
        return mynumber;
    }

    function sum(uint _num) public pure returns(uint){
        uint total = 0;
        for(uint i = 1; i<= _num; i++){
            total += i;
        }

        return total;
    }

    
}