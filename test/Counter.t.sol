// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Counter, SOME_SLOT} from "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    function testBytecode() public pure {
        bytes memory creation = type(Counter).creationCode;
        uint256 length = creation.length;
        uint256 offset;
        bytes32 lastBytes;
        assembly {
            offset := add(creation, length)
            lastBytes := mload(offset)
        }
        assertEq(lastBytes, SOME_SLOT);
    }
}
