//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
    //this will get initialised to 0!
    uint256 favnumber;
    
    struct People{
        uint256 favnumber;
        string name;
    }

    People[] public person;
    mapping (string => uint256) public nametofavnumber;
    // People public person = People({favnumber:2, name:"Bhagyesh"});


    function store(uint256 favouritenumber) public {
        favnumber = favouritenumber;
    }

    function retrieve() public view returns(uint256){
        return favnumber;
    }

    function addperson(string memory _name,uint256 _favnumber) public{
        person.push(People(_favnumber,_name));
        nametofavnumber[_name] = _favnumber;
    }
}
