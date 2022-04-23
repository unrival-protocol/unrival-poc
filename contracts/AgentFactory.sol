// SPDX-License-Identifier: MIT
pragma solidity >=0.4.25 <0.7.0;

// This is just a simple example of a coin-like contract.
// It is not standards compatible and cannot be expected to talk to other
// coin/token contracts. If you want to create a standards-compliant
// token, see: https://github.com/ConsenSys/Tokens. Cheers!

import './Agent.sol';

contract AgentFactory {
    Agent[] private _agents;

    constructor() public {

        createAgent(['promise'], ['']); // create promise agent


    }

    function createAgent(string memory name) public {

        Agent agent = new Agent(
          name,
          msg.sender
        );
        _agents.push(agent);
    }


    function allAgents(uint256 limit, uint256 offset)
        public
        view
        returns (Agent[] memory coll)
    {
        return coll;
    }
}
