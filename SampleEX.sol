// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract ReqAssRev {
    error AmountTooLow(uint256 amount);
    error InvalidResult();
    error AlwaysReverts();

    // Function to demonstrate the use of require() 
    function requireEx(uint256 _amount) external pure {
        // Check if the amount is greater than 10, otherwise revert with custom error
        if (_amount <= 10) {
            revert AmountTooLow(_amount);
        }
    }

    // Function to demonstrate the use of assert() 
    function assertEx(uint256 _value) external pure {

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

