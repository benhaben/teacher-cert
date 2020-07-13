pragma solidity >=0.4.21 <0.7.0;

contract TeacherCertification {

    struct TeacherCertification {
        address issuer;
        string ownerName;
        string certificationName;
        string description;
        bool isExist;
    }

    mapping(string => TeacherCertification) private teacherCertificationDirectory;

    function createTeacherCertification(address issuer, string memory ownerName, string memory certificationName, string memory description) public returns (string memory){
        TeacherCertification storage teacherCertification = teacherCertificationDirectory[ownerName];

        teacherCertification.issuer = issuer;
        teacherCertification.ownerName = ownerName;
        teacherCertification.certificationName = certificationName;
        teacherCertification.description = description;
        teacherCertification.isExist = true;

        emit TeacherCertificationCreated(issuer, ownerName, certificationName, description);

        return certificationName;
    }

    event TeacherCertificationCreated(
        address indexed issuer,
        string indexed ownerName,
        string indexed certificationName,
        string description
    );

    function getTeacherCertification(string memory _ownerName) public view returns (address issuer, string memory ownerName, string memory certificationName, string memory description) {
        TeacherCertification memory teacherCertification = teacherCertificationDirectory[_ownerName];

        return (
        teacherCertification.issuer,
        teacherCertification.ownerName,
        teacherCertification.certificationName,
        teacherCertification.description
        );
    }
}
