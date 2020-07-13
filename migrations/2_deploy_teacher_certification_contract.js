const teacherCert = artifacts.require("./TeacherCertification.sol");

module.exports = function (deployer) {
    deployer.deploy(teacherCert)
};