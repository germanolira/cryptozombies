// SPDX-License-Identifier: MIT

// Pragma tells the compiler what version of Solidity we are using
pragma solidity ^0.8.0;

// Contract is the most fundamental concept of Solidity
contract ZombieFactory {

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

    // Declare a function named _createZombie. It will take two parameters: _name (a string), and _dna (a uint).
    function _createZombie(string memory _name, uint _dna) private {
        // Inside the function, we'll create a Zombie named "zombie" (lowercase).
        zombies.push(Zombie(_name, _dna));
    }

    // https://cryptozombies.io/pt/lesson/1/chapter/10

}
