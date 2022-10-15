
const OracleFactory = artifacts.require("OracleFactory");

module.exports = function (deployer) {
  deployer.deploy(OracleFactory);
};
