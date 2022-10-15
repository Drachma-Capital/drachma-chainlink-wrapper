const Token = artifacts.require("OHMPriceFeed")



contract("Token", (accounts) => {
  it("Should put initial tokens inside senders account", async() => {
    const tokenInstance = await Token.deployed(10);
    const balances = (await tokenInstance.balanceOf(accounts[0])).toNumber()

    assert.equal(balances, 10)
  })
})