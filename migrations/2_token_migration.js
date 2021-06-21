const METokenMigrations = artifacts.require("METoken");
const FaucetMigrations = artifacts.require("Faucet");

module.exports = function (deployer) {
  deployer.deploy(METokenMigrations);
  deployer.deploy(FaucetMigrations);
};

