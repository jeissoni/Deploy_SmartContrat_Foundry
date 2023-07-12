// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import {ERC721} from "solmate/tokens/ERC721.sol";
//import {Strings} from "openzeppelin-contracts/contracts/utils/Strings.sol";
//import {ERC721} from "openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";


contract NFT is ERC721 {

    uint256 public currentTokenId;

    constructor(
        string memory _name,
        string memory _symbol
    ) ERC721(_name, _symbol) {}

    function mint(address _to) public {
        uint256 newTokenId = currentTokenId;
        _mint(_to, newTokenId);
        currentTokenId++;
    }

    function tokenURI(uint256 _tokenId) public pure override returns (string memory) {
        return "hola";
    }
}
