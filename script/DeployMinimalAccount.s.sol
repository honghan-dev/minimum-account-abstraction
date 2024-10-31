// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {Script} from "forge-std/Script.sol";
import {MinimalAccount} from "../src/ethereum/MinimalAccount.sol";
import {HelperConfig} from "./HelperConfig.s.sol";

contract DeployMinimal is Script {
    MinimalAccount public minimalAccount;
    HelperConfig.NetworkConfig public config;
    HelperConfig helperConfig;

    function run() public {}

    function deployMinimalAccount() public returns (HelperConfig, MinimalAccount) {
        helperConfig = new HelperConfig();
        config = helperConfig.getConfig();

        vm.startBroadcast(config.account);
        minimalAccount = new MinimalAccount(config.entryPoint);
        minimalAccount.transferOwnership(config.account);
        vm.stopBroadcast();

        return (helperConfig, minimalAccount);
    }
}
