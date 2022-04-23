// SPDX-License-Identifier: MIT
pragma solidity >=0.4.25 <0.7.0;

// This is just a simple example of a coin-like contract.
// It is not standards compatible and cannot be expected to talk to other
// coin/token contracts. If you want to create a standards-compliant
// token, see: https://github.com/ConsenSys/Tokens. Cheers!

contract Agent {

    address[] parents = [];
    address[] children = [];

    function isRoot() returns (bool) {
        return !parents.length;
    }

    struct Assessment {
        bool affirm;
        string assessedAddress;
        string assessedProtocol;
        string assessorAddress;
        string assessorProtocol;
        string promiseAddress;
        string promiseProtocol;
        string commentAddress;
        string commentProtocol;
    }

    Assessment[] public assessments;

    struct Name {
        string locale;
        string value;
    }

        Name[] names;

    struct Promise {
        string address;
        string protocol
    }

    Promise[] public promises;

    struct Vote {
        string[] options;

    }

        struct Vote {
            string[] options;
            address voter;
        }

        struct Entity {
            string cid;
            string protocol;
            string decision;
        }

        address public _owner;


    constructor(
                address[] stakeholders,
                Promise[] promises,
                Name[] names,
                ) public {
        name = _name;
        _owner = msg.sender;
    }



    function addName() public {
        // added name must be an instance of name agent
      
    }

    function removeName() public {
      
    }

    function addPromise() public {
      
    }
    function removePromise() public {
      
    }
    function addAssessment() public {
      
    }

    function addDecision() public {
      
    }

    function addVote() public {
      
    }

    function addEntity() public {
      
    }

    mapping (address => uint) balances;

    event Transfer(address indexed _from, address indexed _to, uint256 _value);

    constructor() public {
        balances[tx.origin] = 10000;
    }

    function sendCoin(address receiver, uint amount) public returns(bool sufficient) {
        if (balances[msg.sender] < amount) return false;
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        emit Transfer(msg.sender, receiver, amount);
        return true;
    }


    function getBalance(address addr) public view returns(uint) {
        return balances[addr];
    }
}
