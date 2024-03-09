// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts@5.0.2/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@5.0.2/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts@5.0.2/token/ERC20/extensions/ERC20Permit.sol";
import "@openzeppelin/contracts@5.0.2/access/Ownable.sol";

/// @custom:security-contact emailgevi@gmail.com
contract GeviAI is ERC20, ERC20Burnable, ERC20Permit, Ownable {
    constructor(address initialOwner)
        ERC20("Gevi AI", "GEVI")
        ERC20Permit("Gevi AI")
        Ownable(initialOwner)
    {
        _mint(msg.sender, 1000000000 * 10 ** decimals());
    }
}
