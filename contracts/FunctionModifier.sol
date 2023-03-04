// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract FunctionModifier {
    bool public paused;
    uint256 public count;

    function setPause(bool _paused) external {
        paused = _paused;
    }

    modifier whenNotPaused() {
        require(!paused, "paused");
        _;
    }

    modifier cap(uint256 _x) {
        require(_x < 100, "x >= 100");
        _;
    }

    modifier sandwich() {
        count += 10;
        _;
        count *= 2;
    }

    function inc() external whenNotPaused {
        count += 1;
    }

    function dec() external whenNotPaused {
        count -= 1;
    }

    function incBy(uint256 _x) external whenNotPaused cap(_x) {
        count += _x;
    }

    function foo() external sandwich {
        count += 1;
    }
}
