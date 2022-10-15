// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.7;
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
import "./ETHConverter.sol";

contract OHMPriceFeed {
    AggregatorV3Interface internal priceFeed;

    /**
     * Network: Ethereum Mainnet
     * Aggregator:  OHM/ETH
     * Address: 0x9a72298ae3886221820B1c878d12D872087D3a23
     */
    address public ETHConverterAddress;
    constructor(address _ETHConverterAddress) {
        priceFeed = AggregatorV3Interface(0x9a72298ae3886221820B1c878d12D872087D3a23);
        ETHConverterAddress = _ETHConverterAddress;
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

    function convertETHPriceToUSD() public view returns (uint) {
       uint priceOfAsset = uint(getLatestPrice());
       return ETHConverter(ETHConverterAddress).usdValue(priceOfAsset); 

    }
}

