// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Variables {
    uint256 public myUint = 123;

    // view can read from state and global variables in blockchain
    function globalVars() external view returns (address, uint, uint) {
        address sender = msg.sender;
        uint timestamp = block.timestamp;
        uint blockNum = block.number;
        return (sender, timestamp, blockNum);
    }

    function foo() external {
        uint256 notStateVariable = 456;

        notStateVariable += 100;

        myUint -= 100;
    }
}
