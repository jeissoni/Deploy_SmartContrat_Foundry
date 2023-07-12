// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import {ERC20} from "solmate/tokens/ERC20.sol";

contract ERC20Linea is ERC20 {
    constructor(
        string memory _name,
        string memory _symbol,
        uint8 _decimals
    ) ERC20(_name, _symbol, _decimals) {
        _mint(msg.sender, 200000*10**_decimals);
    }
}
