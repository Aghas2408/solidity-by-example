// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract IfElse {
    function example(uint256 _x) external pure returns (uint256) {
        if (_x < 10) {
            return 1;
        } else if (_x < 20) {
            return 2;
        }
        return 3;
    }

    function ternary(uint256 _x) external pure returns (uint256) {
        // if (_x < 10) {
        //     return 1;
        // }
        // return 2;
        return _x < 10 ? 1 : 2;
    }
}
