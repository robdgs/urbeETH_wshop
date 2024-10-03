// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

// that's a little bit complex so I'll go trhough it. 
// then, the exercise is to rewrite this contract  but you need to send money each other

contract SimpleWallet {
    address public owner;
    
    
    constructor() {
        owner = msg.sender; //msg is a global variable that is always there when you do a transaction
        //msg.sender will be the address of the one who is sending the transaction 
        //when I deploy i call the contract so at the first time the constructor will initialize owner
        //to my one address

    }

    modifier onlyOwner() { //special function
    //the modifier is a function that will be executed before the rest of the function where is called
    //so in this case the flo will be line 31, line 18, line 32
        require(msg.sender == owner, "Not authorized");
        _;
    }

    receive() external payable {} //callback, marked with payable because it can receive money

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    function withdraw(uint amount) public onlyOwner { //the modifier onlyOwner will be executed before the rest of the function
        payable(owner).transfer(amount); //payable(owner) here i CAST owner to payble so 'owner' can receive money
    }

    //i use modifiers to reuse my code, we are in oop programming :>
    //i could have written require(msg.sender == owner, "Not authorized");inside witrhdraw before 
    //payable(owner).transfer(address(this).balance);
}

// 1ETH = 1000000000000000000 (uno con 18 zeri)