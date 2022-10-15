// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.7;
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract OHMPriceFeed {
    AggregatorV3Interface internal priceFeed;

    /**
     * Network: Ethereum Mainnet
     * Aggregator:  OHM/ETH
     * Address: 0x9a72298ae3886221820B1c878d12D872087D3a23
     */
    constructor() {
        priceFeed = AggregatorV3Interface(0x9a72298ae3886221820B1c878d12D872087D3a23);
    }

    /**
     * Returns the latest price
     */
    function getLatestPrice() public view returns (int) {
        (
            /*uint80 roundID*/,
            int price,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/
        ) = priceFeed.latestRoundData();
        return price;
    }
}

