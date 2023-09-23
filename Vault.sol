// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Vault {
    uint256 public totalTokens = 54000000;
    uint256 public tokensPerCycle = 27000000;
    uint256 public cycles = 96;
    uint256 public currentCycle = 1;
    

    function distributeTokens(uint256 valueOfOneCoin) external {
        require(currentCycle <= cycles, "All cycles completed");
        require(totalTokens >= tokensPerCycle, "Not enough tokens for distribution");
        require(valueOfOneCoin > 0, "Value of one coin must be greater than zero");
        
        uint256 tokensToSend = tokensPerCycle * valueOfOneCoin;
        // Transfer tokens to the intended recipients
        // Example: token.transfer(recipient, tokensToSend);
        totalTokens -= tokensPerCycle;
        currentCycle++;
    }
}
