// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage{
    uint256 favoriteNumber;
     struct People {
        uint256 favoriteNumber;
        string name;
    }
    // People public person = People({favoriteNumber:2, name:"Ramya"});

   People[] public persons;

   mapping(string => uint256) public nametoFavPerson;

    function store(uint256 _favoriteNumber) public virtual {
        favoriteNumber = _favoriteNumber;
    }
    //0xd9145CCE52D386f254917e481eB44e9943F39138

    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    function addPeople(uint256 _favnum, string memory _name) public {
        persons.push(People(_favnum,_name));
        nametoFavPerson[_name] = _favnum;
    }
}
