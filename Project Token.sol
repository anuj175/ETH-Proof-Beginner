// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {
    string public tokenName = "anuj";
    string public tokenAbbrv= "Anuj1";
    uint public totalSupply= 10000 ;
    

    mapping(address => uint) public balances;

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
