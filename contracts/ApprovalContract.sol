// SPDX-License-Identifier: MIT
pragma solidity >=0.4.18 <0.9.0;

contract ApprovalContract {

  address public sender;
  address public receiver;
  address constant public approver = 0x498be7b9d58d7e7aaa70b0584659beda678f2d78;

  function ApprovalContract() public {
    // tbd
  }

  function deposit(address _receiver) external payable {
    require(msg.value > 0);
    sender = msg.sender;
    receiver = _receiver;
  }

  funtion viewApprover() external pure returns(address) {
    return(approver);
  }

  function approve() external {
    require(msg.sender == approver);
    receiver.transfer(this.balance);
  }

}
