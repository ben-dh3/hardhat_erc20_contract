// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract BasedPepe is ERC20, ERC20Permit {
    constructor() ERC20("Based Pepe", "PEPE") ERC20Permit("BasedPepe") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }
}