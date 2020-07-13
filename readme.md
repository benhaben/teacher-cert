
## 手动测试方法

tw-eth-cli callContract -m createTeacherCertification -p 0xDB847239aD3787C3B87A70C37F5bebbaf6308119,"mingming","solidity expert","real cert"

tw-eth-cli callContract -m getTeacherCertification -p "mingming"

tw-eth-cli callContractReturnValue callContract -m getTeacherCertification -p "yinyin"