// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * create a cointract with some state variable that need to be initialized in the constructor
 */


contract Constructor {
//allows me to give some initial values to the contract

string public myString;
// create a state variable here

// create a constructor here
constructor (string memory){
    myString = "Hello World";
}
// constructor(type nameOfVariable) {
//     assign value to state variable here
// }

function helloWorld() public view returns(string memory)
{
    return myString;
}

}