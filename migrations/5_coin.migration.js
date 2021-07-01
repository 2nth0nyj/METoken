const StorageSampleMigration = artifacts.require("Coin");

module.exports = function (deployer) {
  deployer.deploy(StorageSampleMigration);
};
