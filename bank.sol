pragma solidity ^0.8.0;
// SPDX-License-Identifier: MIT

contract bank{

    address public owner;
    uint256 public balance;
    constructor(){
        owner=msg.sender;
    }
    receive() payable external{
        balance=balance+msg.value;
    }
    function deposit(uint amount,address payable add) public {
        require(msg.sender==owner,"only owner can withdraw");
        
        add.transfer(amount);
        balance=balance+amount;
    }
    function withdraw(uint amount,address payable add) public {
        require(msg.sender==owner,"only owner can withdraw");
        require(amount<=balance,"insufficient funds");
        add.transfer(amount);
        balance=balance-amount;
    }
} 
