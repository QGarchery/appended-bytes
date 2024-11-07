// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

bytes32 constant SOME_SLOT = 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa;

contract Counter {
    struct Storage {
        bool init;
    }

    constructor() {
        Storage storage $;
        assembly {
            $.slot := SOME_SLOT
        }

        $.init = true;
    }
}
