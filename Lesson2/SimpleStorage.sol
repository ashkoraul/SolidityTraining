// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

// pragma solidity ^0.8.18;

// pragma solidity >= 0.8.18 < 0.9.0; 

contract SimpleStorage {
    // bool hasFavoriteNumber = true;
    uint256  myFavoriteNumber;
    // uint256  public favoriteNumber;
    // string name = "ASD";
    // bytes32 asd = "ASDASdasd";

    uint256[] listOfFavoriteNumbers;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    
    // Person public  pat = Person (7,"Patrick");
    // Person public jon = Person ({favoriteNumber: 7 , name: "Jon"});

    Person[] public listOfPeople; // Dynamic Array, 

    mapping (string => uint256) public nameToFavoriteNumber;

    function addPerson (string memory _name, uint256 _favoriteNumber) public {
        // Person memory newPerson = Person ({favoriteNumber : _favoriteNumber, name : _name});
        // listOfPeople.push(newPerson);
        listOfPeople.push(Person(_favoriteNumber,_name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve () public view returns(uint256) {
        return myFavoriteNumber;
    }


}