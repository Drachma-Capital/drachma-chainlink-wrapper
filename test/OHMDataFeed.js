
const OHMPriceFeed = artifacts.require("OHMPriceFeed")



contract("OHMPriceFeed", (accounts) => {
  it("Should get price of OHM paired against ETH", async() => {
    const dataFeed = await OHMPriceFeed.deployed();
    
    const price = await dataFeed.getLatestPrice()
    console.log(price)

    assert.equal(price, price)
  })
})