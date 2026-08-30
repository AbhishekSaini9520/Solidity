// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract MyFavoriteNumber {
    uint public myNumber = 10;

    function setMyNumber(uint _myNumber) public {
        myNumber = _myNumber;
    }
}

// Task
// contract Status {
//     string public myStatus = "Learning Solidity";

//     function setMyStatus(string calldata _myStatus) public {
//         myStatus = _myStatus;
//     }
// }