// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract ViewAndPureFunctions {
    // view functions read data from blockchain but pure functions don't touch blockchain variables
    uint public num;

    function viewFunction() external view returns (uint) {
        return num;
    }

    function pureFunc() external pure returns (uint) {
        return 1;
    }

    function addToNum(uint x) external view returns (uint) {
        return num + x;
    }

    function add(uint x, uint y) external pure returns (uint) {
        return x + y;
    }
}