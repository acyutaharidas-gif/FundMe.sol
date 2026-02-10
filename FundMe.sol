// get funds
// withdraw funds
// set min. value

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract FundMe {

    uint256 public minUsd = 5;

    function fund() public payable {
        require(msg.value >= minUsd, "Minimum 1 Eth required"); 
        // 1e18 = 1 ETH = 1 * 10 ** 18
        
    }
}