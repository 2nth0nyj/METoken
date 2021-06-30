const StorageSampleMigration = artifacts.require("StorageSample");

module.exports = function (deployer) {
  deployer.deploy(StorageSampleMigration);
};

