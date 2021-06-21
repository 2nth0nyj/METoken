// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

contract Owned {
  address payable owner;

  constructor() {
    owner = payable( msg.sender ) ;
  }

  modifier onlyOwner {
    require(msg.sender == owner, "Only the contract owner can call this function");
    _;
  }
}

contract Mortal is Owned {
  function destroy() public onlyOwner {
    selfdestruct(owner);
  }
}

contract Faucet is Mortal{
    event Withdrawal(address indexed to, uint amount);
    event Deposit(address indexed from, uint amount);

    // Accept any incoming amount
    receive() external payable {
        emit Deposit(msg.sender, msg.value);
    }

    // Give out ether to anyone who asks
    function withdraw(uint withdraw_amount) public {
        // Limit withdrawal amount
        require(withdraw_amount <= 0.1 ether);

        require(
            address(this).balance >= withdraw_amount,
            "Insufficient balance in faucet for withdrawal request"
        );

        // Send the amount to the address that requested it
        (payable ( msg.sender ) ).transfer(withdraw_amount);

        emit Withdrawal(msg.sender, withdraw_amount);
    }
}
