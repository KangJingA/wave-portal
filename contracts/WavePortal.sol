// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {

    // state variable that stored in permanently in the local storage
    uint256 totalWaves;
    // mapping type
    // map the user address to the number of waves
    mapping (address => uint) public noOfWaves; 

    constructor() {
        console.log("Yo yo, I am a contract and I am smart");
    }

    // msg.sender -> address of person who has called the function
    // public makes the function available on the blockchain
    function wave() public {
        totalWaves += 1;
        noOfWaves[msg.sender] += 1;
        console.log("%s has waved!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }
}