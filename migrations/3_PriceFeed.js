
const OHMPriceFeed = artifacts.require("OHMPriceFeed");

module.exports = function (deployer) {
  deployer.deploy(OHMPriceFeed);
};
