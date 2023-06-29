
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "./SimpleStorage.sol";

contract StorageFactory{
    SimpleStorage[] public simpleStorageArray;
    function createSimpleStorage() public  {
        simpleStorageArray.push(new SimpleStorage());
    }

    function SFstore(uint256 _favNum,uint256 _arrind) public {
        simpleStorageArray[_arrind].store(_favNum);
    }

    function SFretrieve(uint256 _arrind) public view returns(uint256) {
        return simpleStorageArray[_arrind].retrieve();
    }
}
