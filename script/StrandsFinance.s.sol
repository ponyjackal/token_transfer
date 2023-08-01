// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.4;

import { Script } from "forge-std/Script.sol";
import { StrandsFinance } from "../src/StrandsFinance.sol";
import "forge-std/console.sol";

/// @dev See the Solidity Scripting tutorial: https://book.getfoundry.sh/tutorials/solidity-scripting
contract DeployStrandsFinance is Script {
   
    StrandsFinance internal strandsFinance;

    function run() public {
        vm.startBroadcast();
        
        strandsFinance = new StrandsFinance();

        vm.stopBroadcast();
    }
}
