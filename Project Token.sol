// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {
    string public tokenName;
    string public tokenAbbrv;
    uint public totalSupply;

    mapping(address => uint) balances;

    constructor(string memory _tokenName, string memory _tokenAbbrv, uint _totalSupply) {
        tokenName = _tokenName;
        tokenAbbrv = _tokenAbbrv;
        totalSupply = _totalSupply;
        balances[msg.sender] = _totalSupply;
    }

    function mint(address _to, uint _value) public {
        totalSupply += _value;
        balances[_to] += _value;
    }

    function burn(address _from, uint _value) public {
        require(balances[_from] >= _value, "Insufficient balance");

        totalSupply -= _value;
        balances[_from] -= _value;
    }
}
