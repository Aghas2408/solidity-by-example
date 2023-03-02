// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

// Can be imported from other contracts
error Unauthorized(address caller);

function helper(uint x) pure returns (uint) {
    return x * 2;
}

contract VendingMachine {
    address payable owner = payable(msg.sender);

    // error Unauthorized(address caller);
    function withdraw() public {
        if (msg.sender != owner) {
            // 23642 gas
            // revert("error");
            // 23678 as longer message as big the gas
            // revert("error error error error error error error error error error error");
            // 23388 gas
            // 23591 gas with parameter
            revert Unauthorized(msg.sender);
        }

        owner.transfer(address(this).balance);
    }
}
