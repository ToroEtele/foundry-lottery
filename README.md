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
4. Using Chainlink Autommation we are going to create a time based trigger.

## Notes
