// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

// We can rename imported function name with keyword "as"
import {Unauthorized, helper as h1} from "./VendingMachine.sol";

// Will return error 2 functions with the same name in one namespace
// function helper(uint x) view returns (uint) {

// }
contract VendingMachineImport {

}
