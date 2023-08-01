// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.12;

import { IERC20 } from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";

contract StrandsFinance {
    function transferToken(address tokenAddress, address recipient, uint256 amount) external {
        require(tokenAddress != address(0), "Invalid token address");
        require(recipient != address(0), "Invalid token address");

        IERC20(tokenAddress).transferFrom(msg.sender, recipient, amount);
    }

    function transferEth(address payable recipient) external payable {
        recipient.transfer(msg.value);
    }
}
