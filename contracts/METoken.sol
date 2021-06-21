// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

import 'openzeppelin-solidity/contracts/token/ERC20/ERC20.sol';

contract METoken is ERC20 {
  constructor() ERC20('Mastering Ethereum Token', 'MET') {
      _mint(msg.sender, 21000000);
  }

  function decimals() public pure override returns (uint8) {
    return 2; 
  }
}
