// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MultiSignatureWallet {
    uint256 public lockInPeriod = 45 ;
    uint256 public promoterLockInPeriod = 730;
    uint256 public tokensForPromoterLockIn = 27000000 ;
    uint256 public cycles = 96;
    uint256 public currentCycle = 1;
    
    constructor(
        uint256 _lockInPeriod,
        uint256 _promoterLockInPeriod,
        uint256 _tokensForPromoterLockIn,
        uint256 _cycles
    ) {
        lockInPeriod = _lockInPeriod;
        promoterLockInPeriod = _promoterLockInPeriod;
        tokensForPromoterLockIn = _tokensForPromoterLockIn;
        cycles = _cycles;
        currentCycle = 1;
    }

    function distributeTokens() external {
        require(currentCycle <= cycles, "All cycles completed");
        // Distribute tokens to the intended recipients
        // Example: token.transfer(recipient, tokensForPromoterLockIn);
        currentCycle++;
    }
}
