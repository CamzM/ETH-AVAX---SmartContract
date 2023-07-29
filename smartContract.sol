// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


//For this project, write a smart contract that implements the require(), assert() and revert() statements.

contract smartContract {
    uint public token;

    function setValue(uint _token) external {
        require(_token > 0, "Inputted token value must be greater than zero.");
        
        assert(_token != token);

        token = _token;
    }

    function valueRevert(uint _token) external {
        if (_token == token) {
            revert("New token value must be different from the current token value.");
        }

        token = _token;
    }
}

