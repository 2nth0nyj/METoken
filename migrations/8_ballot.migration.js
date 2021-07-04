const BallotMigration = artifacts.require("Ballot");

module.exports = function (deployer, network, accounts) {
    deployer.deploy(BallotMigration, ["0x616c706861", "0x62657461", "0x7468657461", "0x64656c7461", "0x7a69676d61"], {from: accounts[2]});
};
