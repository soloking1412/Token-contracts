// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract CoinM is ERC20 {
    constructor() ERC20("CoinM", "CoinM") {
        _mint(msg.sender, 270000 * 10**18); // Total supply of 270,000 coins with 18 decimal precision (1 coin = 100 tokens)
    }
}
