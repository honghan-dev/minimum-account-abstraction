# Minimalist Account Abstraction Implementation

This repository demonstrates a bare-bones implementation of Account Abstraction (ERC-4337) on both Ethereum and zkSync Era using Foundry. It serves as an educational resource to understand the fundamental differences in implementing AA wallets across these networks.

## About

This project provides three core examples:

1. **Basic Ethereum Account Abstraction**
   - Implements a minimal ERC-4337 compliant smart contract wallet
   - Follows EntryPoint standard interface
   - Demonstrates basic UserOperation handling
   - Simple ownership & validation logic

2. **Basic zkSync Account Abstraction**
   - Implements Account Abstraction native to zkSync Era
   - Showcases zkSync's built-in AA capabilities
   - Demonstrates differences from ERC-4337 approach