// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.7;

import "./PriceFeed.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract OracleFactory is Ownable {
    address[] public priceFeedArray;
    address public ethConverter;
    function createOracle(address asset) public onlyOwner {
        PriceFeed priceFeed = new PriceFeed(ethConverter, asset);
        priceFeedArray.push(address(priceFeed));
    }

    function changeEthConverterAddress(address _address) public onlyOwner {
        ethConverter = _address;
    }

    function viewETHConverterAddress() public view returns (address) {
        return ethConverter;
    }

    function getPriceFeedAtIndex(uint256 _index) public view returns (address) {
        return priceFeedArray[_index];
    }

}