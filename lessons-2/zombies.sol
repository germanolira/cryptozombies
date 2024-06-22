// SPDX-License-Identifier: MIT

// Pragma tells the compiler what version of Solidity we are using
pragma solidity ^0.8.0;

// Contract is the most fundamental concept of Solidity
contract ZombieFactory {
	event NewZombie(uint zombieId, string name, uint dna);
    // Declare our uint variable dnaDigits here (uint = unsigned integer)
    uint dnaDigits = 16;
    // Declare a uint named dnaModulus here, and set it equal to 10 to the power of dnaDigits.
    uint dnaModulus = 10 ** dnaDigits;

    // Declare a struct named Zombie.
    struct Zombie {
        string name;
        uint dna;
    }

    // Declare a public array of Zombie structs called zombies.
    // Public arrays have automatic getter methods, so we can retrieve the zombies from our contract.
    Zombie[] public zombies;

    // This mapping associates each zombie with its owner's address.
    mapping (uint => address) public zombieToOwner;
    // This mapping is associated with the number of zombies each owner has.
    // The address is the key and uint is the value.
    mapping (address => uint) ownerZombieCount;

    // Declare a function named _createZombie. It will take two parameters: _name (a string), and _dna (a uint).
    // Always make functions private by default, and only make them public when you need to access them from outside the contract.
    function _createZombie(string memory _name, uint _dna) private {
        // Inside the function, we'll create a Zombie named "zombie" (lowercase).
        // zombies.push(Zombie(_name, _dna));
				uint id = zombies.length;
				emit NewZombie(id, _name, _dna);
    }

    function _generateRandomDna(string memory _str) private view returns (uint) {
				uint rand = uint(keccak256(abi.encodePacked(_str)));
				return rand % dnaModulus;
    }

		function createRandomZombie(string memory _name) public {
        uint randDna = _generateRandomDna(_name);
        _createZombie(_name, randDna);
    }
}