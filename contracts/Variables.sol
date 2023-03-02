// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Variables {
    uint256 public myUint = 123;

    function foo() external {
        uint256 notStateVariable = 456;

        notStateVariable += 100;

        myUint -= 100;
    }
}
