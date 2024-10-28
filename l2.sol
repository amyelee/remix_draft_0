// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract Storage{
    int other_number;
    string contract_name;
    bytes biteme;

    uint256 bigger_number;

    address owner;
    address customer;

    mapping(address => uint256) balances;

    // visibility levels
    // public (anyone can use), private (only this smart contract and things that inherit can use, 
    // internal (only smart contract itself can use), externam
    function  assign_balance(address account, uint256 number) public {
        balances[account] = number;
    }

    constructor(string memory name) { // name lives in memory
        // msg, txn
        contract_name = name;
        owner = msg.sender; // sender of the message is the owner
    }



}