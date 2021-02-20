// SPDX-License-Identifier: MIT
pragma solidity >=0.4.18 <0.9.0;

contract ApprovalContract {

  address public sender;
  address public receiver;
  address constant public approver = 0x498Be7B9d58d7E7aAA70b0584659BEDa678F2D78;

  function deposit(address _receiver) external payable {
    require(msg.value > 0);
    sender = msg.sender;
    receiver = _receiver;
  }

  function viewApprover() external pure returns(address) {
    return(approver);
  }

  function approve() external {
    require(msg.sender == approver);
    receiver.transfer(address(this).balance);
  }

}
