// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.7;
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
import "./ETHConverter.sol";


contract PriceFeed {
    AggregatorV3Interface internal priceFeed;
    address public ETHConverterAddress;
    constructor(address _ETHConverterAddress, address _asset) {
        priceFeed = AggregatorV3Interface(_asset);
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

