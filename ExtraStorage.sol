// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "./SimpleStorage.sol";

//Example to learn inheritance in Solidity
contract ExtraStorage is SimpleStorage {
    
    //defining a new function to override the existing function in the base contract

    function store(uint256 _favnum) public override {
        favoriteNumber = _favnum + 5;
    }

}
