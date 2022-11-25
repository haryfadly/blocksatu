// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageFactory()public{
        // 
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber)public{
        //address
        //ABI - application binary interfaces
        // SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex)public view returns (uint256){
        // SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        return simpleStorageArray[_simpleStorageIndex].retrieve();
    }
}