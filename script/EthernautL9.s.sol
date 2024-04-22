// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";

contract EthernautL9Script is Script {
    function run() public {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));

        vm.stopBroadcast();
    }
}
