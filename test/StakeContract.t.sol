// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "../src/StakeContract.sol";
import "./mocks/MockERC20.sol";
// import "forge-std/Test.sol";

contract StakeContractTest is Test {
    StakeContract public stakeContract;
    MockERC20 public mockToken;

    function setUp() public {
        stakeContract = new StakeContract();
        mockToken = new MockERC20();
    }

    function testExample(uint8 amount) public {
        mockToken.approve(address(stakeContract), amount);
        bool stakePassed = stakeContract.stake(amount, address(mockToken));
        assertTrue(stakePassed);
    }
}
