// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "forge-std/Script.sol";
import {ERC20Linea} from "../src/ERC20.sol";

contract MyScriptERC20 is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        ERC20Linea ERC20 = new ERC20Linea("ERC20_linea", "ERC20", 18);

        vm.stopBroadcast();
    }
}
