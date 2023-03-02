// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// safe math
contract SafeMath {
    function testUnderflow() public pure returns (uint256) {
        uint256 x = 0;
        x--;
        return x;
    }

    function testUncheckedUnderflow() public pure returns (uint256) {
        uint256 x = 0;
        unchecked {
            x--;
        }
        return x;
    }
}
