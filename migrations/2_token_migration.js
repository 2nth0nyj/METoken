const METokenMigrations = artifacts.require("./contracts/METoken.sol");
const FaucetMigrations = artifacts.require("./contracts/Faucet.sol");

module.exports = function (deployer) {
  deployer.deploy(METokenMigrations);
  deployer.deploy(FaucetMigrations);
};

