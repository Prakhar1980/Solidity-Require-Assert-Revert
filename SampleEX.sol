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
