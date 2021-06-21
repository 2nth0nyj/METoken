const METoken = artifacts.require("METoken");
const METFaucet = artifacts.require("METFaucet");

module.exports = async function (deployer, network, accounts) {
    let metokenInstance = await  METoken.deployed()
    if( metokenInstance ) {
        let address = metokenInstance.address
        let owner = accounts[0]
        await deployer.deploy(METFaucet, address, owner)
    }
};
  