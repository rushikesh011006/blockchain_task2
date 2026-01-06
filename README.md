# blockchain_task2
solidity : Simple Voting System (Smart Contract)
This Solidity smart contract implements a simple voting system with two candidates.
Votes are counted securely, and the current vote count for both candidates can be viewed at any time.
The contract assigns ownership at the time of deployment.
The address that deploys the contract is stored as the owner using `msg.sender`.
The administrator (deployer) controls when voting starts and stops.
Each address is allowed to vote only once, enforced using a mapping.
Only the owner is allowed to perform privileged actions.
This is enforced by checking the caller’s address with a `require` statement.

