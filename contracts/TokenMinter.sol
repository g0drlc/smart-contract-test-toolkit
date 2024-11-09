// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract TokenMinter is ERC20, Ownable {
    uint256 public constant INITIAL_SUPPLY = 100000 * (10 ** 18); // 100,000 tokens with 18 decimals

    constructor() ERC20("Zygo The Frog", "ZYGO") {
        _mint(msg.sender, INITIAL_SUPPLY); // Mint 100,000 tokens to the contract owner
    }

    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }
}
