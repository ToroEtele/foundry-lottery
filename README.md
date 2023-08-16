# Proveably Random Raffle Contract

## About

This code is to create proveably random smart contract lottery.

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```

# Documentation

## What we want it to do?

1. Users can enter by paying for a ticket
    1. The ticket fees are going to the winner during the draw
2. After X period of time, the lottery will automatically draw a winner
    1. This will be done programatically
3. Using Chainlink VRF we are going to introduce randomness
4. Using Chainlink Autommation we are going to create a time based trigger

## Notes

### Gas Optimalization:

Reading & Writing into storage is very expensive. Every operation takes 100 gas minimum (SLOAD, SSTORE), while other opcodes takes usually 3-10 gas amount. Immutable and constant variables don't take a place in sorage, so they are much cheaper. Use them whenever possible. 

Also private variables are cheaper.

Custom errors are more gas efficient, don't use require, instead define a custom error and revert the function if the condition applies.

### Best practices:

In the solidity documentation there is a suggested order for elements.

Whenever we make a storage update an event should be emited. 

### Naming conventions:

Custom errors must be prefixed with the name of the contract.

### Events:

Events can have indexed and non-indexed parameters. They can have maximum 3 indexed parameters which are also known as topics. Indexed parameters are searchable.