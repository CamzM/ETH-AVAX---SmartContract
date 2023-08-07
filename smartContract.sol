// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


//For this project, write a smart contract that implements the require(), assert() and revert() statements.

contract smartContract {
    uint public token;

    function setTokenVal(uint _value) external {
        require(_value > 50, "Inputted token value must be greater than zero.");
        
        assert(_value != token);

        token = _value;
    }

    function revertTokenVal(uint _value) external {
        if (_value == token) {
            revert("New token value must be different from the current token value.");
        }

        token = _value;
    }
}
