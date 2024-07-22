// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.0;

import {Script, console} from "forge-std/Script.sol";
import {HackMeIfYouCan} from "../src/HackMeIfYouCan.sol";

contract DeployAndTestHackMeIfYouCan is Script {
    function run() external {
        vm.startBroadcast();

        bytes32 password = 0x1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef; // Exemple de mot de passe

        bytes32[15] memory data = [
            bytes32(0),
            bytes32(0),
            bytes32(0),
            bytes32(0),
            bytes32(0),
            bytes32(0),
            bytes32(0),
            bytes32(0),
            bytes32(0),
            bytes32(0),
            bytes32(0),
            bytes32(0),
            bytes32(0),
            bytes32(0),
            bytes32(0)
        ];

        // Déployer le contrat
        HackMeIfYouCan hackMeIfYouCan = HackMeIfYouCan(
            payable(0x9D29D33d4329640e96cC259E141838EB3EB2f1d9)
        );

        bool guess = true;

        console.log(hackMeIfYouCan.flip(guess));

        console.log(
            hackMeIfYouCan.balanceOf(0x37666e193fE2dA22AF16BcBB83D613eA86844068)
        );

        hackMeIfYouCan.contribute();

        hackMeIfYouCan.transfer(0x37666e193fE2dA22AF16BcBB83D613eA86844068, 1);

        // hackMeIfYouCan.addPoint();

        console.log(
            hackMeIfYouCan.getMarks(0x37666e193fE2dA22AF16BcBB83D613eA86844068)
        );

        // Terminer le déploiement
        vm.stopBroadcast();
    }
}
