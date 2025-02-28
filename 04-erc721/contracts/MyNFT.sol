// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract MyNFT is ERC721URIStorage {
    uint256 tokenId;

    constructor() ERC721("Dionela", "DNLA") {}

    function mint() external {
        _safeMint(msg.sender, tokenId);
        _setTokenURI(tokenId, "https://path/to/metadata-uri");
        tokenId++;
    }
}
