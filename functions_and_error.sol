// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract AVAXMOD1 {
    mapping(address => uint) stakeAccount;

    function passcodeToClub(uint pass) public pure returns (string memory) {
        if (pass != 45741) {
            revert("Don't have permission to enter");
        }
        return "Welcome to The Club";
    }

    function stakeDOGE(address _address, uint _value) public payable {
        require(_value >= 1000, "You must atleast stake 1000 DOGE");
        stakeAccount[_address] += _value;
    }

    function division(
        uint numerator,
        uint denominator
    ) public pure returns (uint) {
        assert(denominator != 0);
        return numerator / denominator;
    }
}
