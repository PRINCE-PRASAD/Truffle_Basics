
// SPDX-License-Identifier: UNLICENCED
pragma solidity >= 0.5.0 < 0.9.0;
contract test{
    uint public x=10;

    function set(uint _x) public{
        x=_x;
    }
}