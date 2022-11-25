// I'm a comment!
// SPDX-License-Identifier: MIT

pragma solidity 0.8.8;
// pragma solidity ^0.8.0;
// pragma solidity >=0.8.0 <0.9.0;

contract Storage{
    uint256 public favoriteNumber;

    mapping (string => uint256) public nameToFavoriteNumber;

    struct People {
        string name;
        uint256 favoriteNumber;
    }

    uint256[] public favoriteNumberList;
    People[] public people;

    function store(uint256 _favoriteNumber)public{
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }

    // calldata, memory, storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People({favoriteNumber: _favoriteNumber, name: _name}));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
