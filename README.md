# CodeAlpha Internship - Task 2: MultiSend Smart Contract

## 📌 Project Overview
The goal of this task was to create a **MultiSend Smart Contract** in Solidity that:
- Accepts an array of Ethereum addresses.
- Uses a **payable function** to receive Ether with the transaction.
- Splits the Ether equally among all addresses in the array.
- Ensures transfers are successful and emits events for transparency.
- 
- ## ⚙️ Environment Details
- **Solidity Version:** 0.8.0 (tested in Remix IDE)
- **Remix Environment:** JavaScript VM (London)
- **Compiler Settings:** 
  - Language: Solidity
  - EVM Version: London
  - Enable Optimization: No
- **Deployment Tool:** Remix IDE
  
---

## ⛽ Gas Usage (Example Transaction)
- **Transaction cost:** 66,932 gas  
- **Execution cost:** 44,484 gas  
- **Value sent:** 1 ETH (1000000000000000000 wei)  
- **Recipients:** 3 addresses  
- **Distribution:** Each received 0.333... ETH (333333333333333333 wei)  
- **Events:** 3 `PaymentSent` events emitted

---

## ⚙️ How It Works
1. The sender calls the `sendEther` function and provides a list of recipient addresses.
2. Ether is sent along with the transaction (`msg.value`).
3. The contract divides the Ether equally among all recipients.
4. Each recipient receives their share, and a `PaymentSent` event is logged.

## 🧪 Testing
- Deployed and tested on **Remix IDE**.
- Verified that Ether was split correctly and events were emitted.
- Example: Sending 1 ETH to 3 recipients resulted in each receiving `0.333... ETH`.

## 🌱 Learning Experience
This task was hard to understand at first and took time to learn, but it helped me:
- Gain hands‑on practice with Solidity.
- Understand how payable functions and Ether transfers work.
- Learn how to debug and check logs in Remix IDE.
- Build confidence in smart contract development.

---
