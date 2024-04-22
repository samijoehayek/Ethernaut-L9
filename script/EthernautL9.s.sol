// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {EthernautL9} from "../src/EthernautL9.sol";

// The first approach is to go to the etherscan transaction where the contract creation happenend
// By searching the states that changed when the contract was created we where able to fund out the state changes for our instance that was deployed
// We located the changes for both the boolean locked and the password and the password is : A very strong secret password :)

// The second approach is to use the cast command where we can paste the address of the contract and get the storage changes for the contract
// What will be received is the hex code of the variable where we can just convert it from hex to string and get the password using the to-ascii command

contract EthernautL9Script is Script {
    EthernautL9 public ethernautL9 =
        EthernautL9(0xB686455B40E7f7E5bAcd954C70365ED5C88d2F3A);
    function run() public {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        ethernautL9.unlock("A very strong secret password :)");
        vm.stopBroadcast();
    }
}
