
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Whitelist{
// max no. of addresses which can be whitelisted
    uint8 public maxWhitelistedAddresses;
// keep taract of no. of addresses that can be whitelisted
    uint8 public numAddressWhitelisted;

    mapping(address=>bool)public whitelistedAddresses;

    constructor(uint8 _maxWhitelistedAddresses){
       maxWhitelistedAddresses = _maxWhitelistedAddresses;
    }

    function addAddressToWhitelsit() public{
        require(!whitelistedAddresses[msg.sender],"Sender already in the whitelist");
        require(numAddressWhitelisted < maxWhitelistedAddresses,"max limit reached");
        whitelistedAddresses[msg.sender]=true;
        numAddressWhitelisted+=1;

    }


} 