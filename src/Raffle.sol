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
    // @dev duration of the raffle in seconds
    uint256 private immutable i_interval;
    address payable[] private s_players;
    uint256 private s_lastTimpeStamp;

    /** Events */
    event EnteredRaffle(address indexed player);

    constructor(uint256 _enteranceFee, uint256 _interval) {
        i_enteranceFee = _enteranceFee;
        i_interval = _interval;
        s_lastTimpeStamp = block.timestamp;
    }

    function enterRaffle() external payable {
        if (msg.value < i_enteranceFee) {
            revert Raffle__NotEnoughEthSent();
        }
        s_players.push(payable(msg.sender));
        emit EnteredRaffle(msg.sender);
    }

    function pickWinner() public {
        if ((block.timestamp - s_lastTimpeStamp) < i_interval) {
            revert();
        }
    }

    /** Getter Function */

    function getEnteranceFee() public view returns (uint256) {
        return i_enteranceFee;
    }
}
