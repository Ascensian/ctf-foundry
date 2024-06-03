// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// import "../lib/forge-std/src/Script.sol";
import {Script} from "forge-std/Script.sol";
// import "../src/SimpleStorage.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
    function run() external returns (SimpleStorage) {
        // vm is a special keyword from forge-std, only works in foudry project, it is accessible because he inherits Script
        vm.startBroadcast(); // means every piece of code after this line is sent to the RPC, it's the stuff we want to deploy
        SimpleStorage simpleStorage = new SimpleStorage();
        vm.stopBroadcast();
        return simpleStorage;
    }
}
