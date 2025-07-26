// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract GasAlertReceiver {
    event GasAlert(string info);

    function logGasSpike(string calldata info) external {
        emit GasAlert(info);
    }
}
