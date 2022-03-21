// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";


contract Wallpaper is Ownable {
    string private wallpaperURL;

    // Emitted when the currently stored url changes
    event URLChanged(string newUrl);

    // Updates a new Url in the contract
    function updateURL(string memory newUrl) public onlyOwner {
        wallpaperURL = newUrl;
        emit URLChanged(newUrl);
    }

    function getWallpaperURL() public view returns (string memory) {

    }
}