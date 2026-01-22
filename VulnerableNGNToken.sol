// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract VulnerableNGNToken is ERC20 {
    constructor() ERC20("Vulnerable NGN", "vNGN") {}

    // Vulnerable mint function: anyone can mint tokens
    function mint(address to, uint256 amount) public {
        _mint(to, amount); // NO access control
    }
}
