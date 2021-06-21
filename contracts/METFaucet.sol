// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5 ;

import 'openzeppelin-solidity/contracts/token/ERC20/ERC20.sol';

contract METFaucet {
  ERC20 public METoken;
  address public METOwner;

  // METFaucet constructor, provide the address of METoken contract and
  // the owner address we will be approved to transferFrom
  constructor(ERC20 _METoken, address _METOwner) { 
    METoken = _METoken;
    METOwner = _METOwner;
  }

  function withdraw(uint withdraw_amount) public {
      require(withdraw_amount <= 1000);
      METoken.transferFrom(METOwner, msg.sender, withdraw_amount);
  }

  fallback() external payable  { revert(); }
  receive() external payable { revert(); }

}
