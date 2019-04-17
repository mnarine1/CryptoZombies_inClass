var Course = artifacts.require("./Courses.sol");

module.exports = function(deployer) {
  deployer.deploy(Course);
};
