// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * this is a contract to learn functions, contract state and return values in solidity.
 * Create a contract that contains 2 functions:
    one has to modify the contract state and the other one has to return a value
    one of them has to emit an event
 * at the end, you need to compile and deploy the contract using remix
 * check in the remix logs the event that you emitted
 */


contract Functions {


    uint public unsignedInteger = 10;
    event Updated(uint n, uint m); // one function need to emit this event this way: emit Hello('hi')
    //I use event to put a log

    function updateMe(uint _newInt)  public 
    {
        unsignedInteger = _newInt;
        emit Updated(_newInt, _newInt);
    }

    //log: group of info that you can read after an event
    //you are able to look at logs from outside of the blockchain

    // assignment: create the functions here 
    // emit(something; triggeres the evnt when called inside of a function, usually at the end of the function
}