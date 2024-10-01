// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * this is a contract to learn data types and functions in solidity.
 * Create a contract that demonstrates the use of different data types (e.g., uint, int, bool, address, string, and arrays and mapping)
 * Create data type, getters and setters
 * at the end, you need to compile and deploy the contract using remix
 */


contract BasicTypes {
// contract è una classe, it is a blueprint, uno stampino 
//le variabili storate qui saranno permanentemente aggiunte alla bockchain

    // uint : integers without sign:
    uint public unsignedInteger = 10;
    int public myInteger = 42;
    bool public myBool = true;
    string public myString = "hello";
    address public myAddress; //identifier of a smart contract or an account
    string[] public myStringArray = ["ciao", "pizza", "unicorn"];
    
    //getter
    function getString() view public returns(string memory){
        //dopo l'esecuzione della funzione le variabili inizializzate 
        //qui dentro invece saranno per sempre cancellate
        return myString;
    }

    function getBool() view public returns(bool)
    {
        return myBool;
    }

    function getInt() view public returns(int)
    {
        return myInteger;
    }
    function  getUint() view public returns(uint)
    {
        return unsignedInteger;
    }

    function setUnsignedInteger(uint _value) public {
        unsignedInteger = _value;
    }

    function setMyInt(int _value) public {
        myInteger = _value;
    }

    function setMyString(string memory _value) public {
        myString = _value;
    }

     function setMyBool(bool _value) public {
        myBool = _value;
    }

    // assignment: do all the other data types  int, bool, address, string, and arrays and mapping
}