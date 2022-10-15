// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.7;
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract ETHConverter {
    AggregatorV3Interface internal priceFeed;

    /**
     * Network: Goerli Testnet
     * Aggregator:  ETH/USD
     * Address: 0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e
     */
    constructor() {
        priceFeed = AggregatorV3Interface(0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e);
    }

    int public priceOfEth;

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


    function usdValue(uint priceOfAsset) public view returns (uint) {
        uint price = uint(getLatestPrice());
        return (price * priceOfAsset);
        // Divide by 10**16 to get the value in USD
    }


}

