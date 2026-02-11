// get funds
// withdraw funds
// set min. value

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract FundMe {

    uint256 public minUsd = 5;

    function fund() public payable {
        require(msg.value >= minUsd, "Minimum 1 Eth required"); 
        // 1e18 = 1 ETH = 1 * 10 ** 18

    }

    function getPrice() public {
        // address 0x694AA1769357215DE4FAC081bf1f309aDC325306
        // abi
    }
    function getConversionRate() pure public returns(AggregatorV3Interface) {
        return AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
    }
}