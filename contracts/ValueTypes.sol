// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

// Data types => values and references

contract ValueTypes {
    bool public b = true;
    /*
    uint stands for unsigned integer, meaning non negative integers
    different sizes are available
        uint8   ranges from 0 to 2 ** 8 - 1
        uint16  ranges from 0 to 2 ** 16 - 1
        ...
        uint256 ranges from 0 to 2 ** 256 - 1
    */
    uint public u = 123; // uint = uint256
    /*
    Negative numbers are allowed for int types.
    Like uint, different ranges are available from int8 to int256
    
    int256 ranges from -2 ** 255 to 2 ** 255 - 1
    int128 ranges from -2 ** 127 to 2 ** 127 - 1
    */
    int public i = -123;

    // minimum and maximum of int
    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    // address type
    address public addr = 0xfb0B3506DFc4200a5496A767e43AE30b07291E1C;

    bytes32 public b32 =
        0x52eb13c4df4eff8c5c22773993f7643d3121bd47bb3ab7adf0cab3e4ca82549f;

    /*
    In Solidity, the data type byte represent a sequence of bytes. 
    Solidity presents two type of bytes types :

     - fixed-sized byte arrays
     - dynamically-sized byte arrays.
     
     The term bytes in Solidity represents a dynamic array of bytes. 
     It’s a shorthand for byte[] .
    */
    bytes1 a2 = 0xb5; //  [10110101] [b5]
    bytes1 b2 = 0x56; //  [01010110] [56]

    // Default values
    // Unassigned variables have a default value
    bool public defaultBoo; // false
    uint public defaultUint; // 0
    int public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000
}
