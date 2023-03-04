// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Error {
    function testRequire(uint256 _i) public pure {
        require(_i <= 10, "i > 10");
        // more code
    }

    function testRevert(uint256 _i) public pure {
        // if logic is complex use revert
        if (_i > 1) {
            if (_i > 2) {
                if (_i > 10) {
                    revert("i > 10");
                }
            }
        }
        // more code
    }

    uint256 public num = 123;

    function testAssert() public view {
        // we know that num is equal to 123, if it is not equal it means we have bug in contract
        // also assert doesn't return gas
        assert(num == 123);
    }

    error MyError(address caller, uint256 i);

    function testRequireWithCustomError(uint256 _i) public view {
        // require(_i <= 10, "very long erro message cost more gas");

        if (_i > 10) {
            revert MyError(msg.sender, _i);
        }
    }
}
