
# Solidity Examples

This repository contains examples of using require(), assert(), and revert() statements in Solidity smart contracts. These functions are essential for ensuring proper validation, error handling, and debugging within smart contracts.

## Description

The `ReqAssRev` contract is a Solidity smart contract designed to demonstrate custom error handling with `require`, `assert`, and `revert` statements. It defines three custom errors: `AmountTooLow`, `InvalidResult`, and `AlwaysReverts`. The `requireEx` function checks if a provided amount is greater than 10, reverting with `AmountTooLow` if not. The `assertEx` function calculates half of a provided value and reverts with `InvalidResult` if the result is zero. The `alwaysRevert` function always reverts with the `AlwaysReverts` error. This contract illustrates how custom errors can provide specific and informative error messages, enhancing debugging and reducing gas costs.

## Getting started
## Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at-https://remix.ethereum.org/

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g.contract.sol). Copy and paste the following code into the file:


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract ReqAssRev {
 
    error AmountTooLow(uint256 amount);
    error InvalidResult();
    error AlwaysReverts();

    // Function to demonstrate the use of require() 
    function requireEx(uint256 _amount) external pure {
        if (_amount <= 10) {
            revert AmountTooLow(_amount);
        }
    }

    // Function to demonstrate the use of assert()                  
    function assertEx(uint256 _value) external pure {
        // Calculate the result
        uint256 RES = _value / 2;

        if (RES == 0) {
            revert InvalidResult();
        }
    }

    // Function to demonstrate the use of revert()  
    function alwaysRevert(uint256) external pure {
        
        revert AlwaysReverts();
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

