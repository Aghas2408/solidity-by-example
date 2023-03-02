// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Counter {
    uint256 public counter;

    function inc() external {
        counter += 1;
    }

    function dec() external {
        counter -= 1;
    }
}
