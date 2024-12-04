# Uncommon Dapp Bug: Ownership Transfer Vulnerability

This repository demonstrates a subtle bug in a decentralized application (Dapp) that involves a vulnerability in the ownership transfer mechanism.  The `transferOwnership` function lacks a crucial access control check, allowing any address to transfer ownership of the contract.

This vulnerability is uncommon because it doesn't involve common security issues like reentrancy or integer overflow.  It highlights the importance of thorough access control implementation in all parts of your smart contract, even seemingly innocuous functions like ownership transfer.

## Bug Details

The `transferOwnership` function in `bug.sol` allows any address to transfer contract ownership to a new address.  This is because it does not verify if the calling address (msg.sender) is the contract's current owner before changing ownership.

## Solution

The solution, shown in `bugSolution.sol`, adds the necessary `require` statement to ensure only the current owner can transfer ownership.