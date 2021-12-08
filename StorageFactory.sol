// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
import "./SimpleStorage.sol";
// inherit all functions by using "is" 
contract StorageFactory is SimpleStorage{

    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public{
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }
    // Address, ABI(comes from import above) needed to interact with other contract
    function sfStore(uint256 _simplestorageindex,uint256 _simplestoragenumber) public{
        // SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[_simplestorageindex]));
        // simpleStorage.store(_simplestoragenumber);
        SimpleStorage(address(simpleStorageArray[_simplestorageindex])).store(_simplestoragenumber);
    }

    function sfGet(uint256 _simplestorageindex) public view returns(uint256) {
        // SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[_simplestorageindex]));
        // return simpleStorage.retrieve();
        SimpleStorage(address(simpleStorageArray[_simplestorageindex])).retrieve();
    }
}
