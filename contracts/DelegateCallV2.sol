// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "./LogicV2.sol";

contract DelegateCallV2 {
    address public logic;
    address public owner;
    uint public num;

    constructor(address _logicAddress){
        logic = _logicAddress;
        owner = msg.sender;
    }

    function changeNum(uint _num) public{
        logic.delegatecall(abi.encodeWithSignature("changeNum(uint256)",_num));
    }
}
