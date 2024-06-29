
# Solidity Examples

This repository contains examples of using require(), assert(), and revert() statements in Solidity smart contracts. These functions are essential for ensuring proper validation, error handling, and debugging within smart contracts.

## Description


The `ReqAssRev` smart contract is a Solidity-based contract that demonstrates the use of three essential error-handling functions: `require()`, `assert()`, and `revert()`. The `requireEx` function utilizes the `require()` statement to ensure that the input `_amount` is greater than 10, providing a safeguard for input validation. The `assertEx` function employs the `assert()` statement to verify that the result of dividing `_value` by 2 is not zero, which serves as an internal consistency check to catch critical errors during runtime. The `alwaysRevert` function showcases the `revert()` statement, which unconditionally halts execution and reverts any changes made during the transaction, demonstrating a custom error message. Together, these functions illustrate best practices for validating inputs, asserting invariants, and handling exceptional conditions within Solidity smart contracts.

## Getting started
## Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at-https://remix.ethereum.org/

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g.contract.sol). Copy and paste the following code into the file:

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract ReqAssRev {
    // Function to demonstrate the use of require()
    function requireEx(uint256 _amount) external pure {
        require(_amount > 10, "Amount must be greater than 10");
    }

    // Function to demonstrate the use of assert()
    function assertEx(uint256 _value) external pure {
        uint256 RES = _value/2;
                assert(RES != 0);
    }

    // Function to demonstrate the use of revert()
    function alwaysRevert(uint256 ) external pure {
        revert("This function always reverts");
    }
}

## Contract Overview
The ReqAssRev contract includes three functions:

#requireEx(uint256 _amount): Uses require() to ensure the input value is greater than 10.
#assertEx(uint256 _value): Uses assert() to verify that the result of dividing the input value by 2 is not zero.
#alwaysRevert(uint256): Uses revert() to always revert the transaction with a custom error message.


Memory updated
Here's a detailed README file for your smart contract project:

Solidity Error Handling Examples
This repository contains examples of using require(), assert(), and revert() statements in Solidity smart contracts. These functions are essential for ensuring proper validation, error handling, and debugging within smart contracts.

Table of Contents
Introduction
Contract Overview
Functions
Usage
License
Introduction
In Solidity, proper error handling and input validation are crucial for creating robust and secure smart contracts. This repository provides a simple smart contract demonstrating the use of require(), assert(), and revert() functions to handle errors and validate conditions.

Contract Overview
The ReqAssRev contract includes three functions:

requireEx(uint256 _amount): Uses require() to ensure the input value is greater than 10.
assertEx(uint256 _value): Uses assert() to verify that the result of dividing the input value by 2 is not zero.
alwaysRevert(uint256): Uses revert() to always revert the transaction with a custom error message.
Functions
requireEx
solidity
Copy code
function requireEx(uint256 _amount) external pure {
    require(_amount > 10, "Amount must be greater than 10");
}
Ensures that the input _amount is greater than 10. If not, it reverts the transaction with an error message.
assertEx
solidity
Copy code
function assertEx(uint256 _value) external pure {
    uint256 RES = _value / 2;
    assert(RES != 0);
}
Verifies that dividing the input value by 2 does not result in zero. If it does, it indicates a critical error and the transaction is reverted.
alwaysRevert
solidity
Copy code
function alwaysRevert(uint256) external pure {
    revert("This function always reverts");
}
Always reverts the transaction with a custom error message, demonstrating the use of revert().
## Usage
To use the contract, deploy it to your preferred Ethereum network and call the functions as needed. Here are some example interactions:

requireEx: Ensure the input value is greater than 10.
assertEx: Check that dividing the input value by 2 does not result in zero.
alwaysRevert: Demonstrate a function that always reverts.

## Author
prakhar kumar
@prakhar1980

## License
This project is licensed under the MIT License. See the LICENSE file for details.

