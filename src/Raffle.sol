// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

/**
 * @title Raffle contract
 * @author Toró Etele
 * @notice Lottery smart contract created in the coure Learn Solidity, Blockchain Developement & Smart Contracts by Patrick Collins
 * @dev Implements Chainlink VRFv2
 */

contract Raffle {
    error Raffle__NotEnoughEthSent();

    uint256 private immutable i_enteranceFee;
    address payable[] private s_players;

    constructor(uint256 _enteranceFee) {
        i_enteranceFee = _enteranceFee;
    }

    function enterRaffle() external payable {
        if (msg.value < i_enteranceFee) {
            revert Raffle__NotEnoughEthSent();
        }
        s_players.push(payable(msg.sender));
    }

    function pickWinner() public {}

    /** Getter Function */

    function getEnteranceFee() public view returns (uint256) {
        return i_enteranceFee;
    }
}
