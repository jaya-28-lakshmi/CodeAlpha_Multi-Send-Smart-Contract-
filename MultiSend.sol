// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MultiSend {
    // Event to log each payment
    event PaymentSent(address indexed recipient, uint256 amount);

    /// @notice Distribute Ether equally among all recipients
    /// @param recipients Array of Ethereum addresses
    function sendEther(address[] calldata recipients) external payable {
        uint256 count = recipients.length;
        require(count > 0, "No recipients provided");
        require(msg.value > 0, "No Ether sent");

        // Calculate equal share
        uint256 share = msg.value / count;
        require(share > 0, "Not enough Ether to split");

        // Loop through recipients and send Ether
        for (uint256 i = 0; i < count; i++) {
            (bool success, ) = recipients[i].call{value: share}("");
            require(success, "Transfer failed");
            emit PaymentSent(recipients[i], share);
        }

        // If there's any remainder (due to division), refund to sender
        uint256 remainder = msg.value - (share * count);
        if (remainder > 0) {
            (bool refundSuccess, ) = msg.sender.call{value: remainder}("");
            require(refundSuccess, "Refund failed");
        }
    }
}
