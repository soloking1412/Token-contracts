// SPDX-License-Identifier: MIT


pragma solidity ^0.8.0;

contract KYC {
    address public owner;
    
    // Mapping to store KYC status for each address
    mapping(address => bool) public kycStatus;
    
    event KYCVerified(address indexed user);
    
    constructor() {
        owner = msg.sender;
    }
    
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }
    
    modifier notVerified(address user) {
        require(!kycStatus[user], "User is already KYC verified");
        _;
    }
    
    // Function to allow the owner to set KYC status for a user
    function verifyKYC(address user) public onlyOwner notVerified(user) {
        kycStatus[user] = true;
        emit KYCVerified(user);
    }
}
