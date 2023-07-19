# MyToken

This is a simple ERC-20 token contract implemented in Solidity. The contract allows for the creation and destruction of tokens, as well as storing information about the token.

# Requirements

## Variables
*  'tokenName': A public string variable that represents the name of the token.
*  'tokenAbbrv': A public string variable that represents the abbreviated name of the token.
*  ' totalSupply': A public uint variable that stores the total supply of the token.
##	Mapping
* 'balances': A mapping that maps addresses to their token balances. Each address is associated with a uint value representing the token balance.	
##	Constructor
* 'constructor': The constructor function is executed only once during contract deployment. It takes three parameters: '_tokenName' (string), '_tokenAbbrv' (string), 
   and '_totalSupply' (uint). The constructor initializes the tokenName, tokenAbbrv, and totalSupply variables with the provided values. Additionally, it assigns the 
  '_totalSupply' amount of tokens to the deployer's address by setting 'balances[msg.sender]' to '_totalSupply'.
## Functions
*   'mint': A public function that allows the creation of new tokens. It takes two parameters: '_to' (address) and '_value' (uint), representing the address to which 
     the tokens will be minted and the amount of tokens to be minted, respectively. Inside the function, it increases the totalSupply by '_value' and adds '_value' 
     tokens to  the balance of the _to address.
* 'burn,: A public function that allows the destruction of tokens. It takes two parameters: '_from' (address) and '_value' (uint), representing the address from which 
     the tokens will be burned and the amount of tokens to be burned, respectively. The function includes a require statement to check if the balance of '_from' is 
     greater than or equal to '_value'. If the condition is satisfied, it deducts '_value' tokens from the totalSupply and subtracts '_value' tokens from the balance of the 
    '_from' address. If the condition is not met, the transaction will revert with the specified error message, "Insufficient balance".
## Usage
* Deploy the contract to the Ethereum network by calling the constructor function with the desired values for '_tokenName', '_tokenAbbrv', and '_totalSupply'.
* Call the mint function to create new tokens for a specific address by providing the '_to' address and the desired '_value'.
* Call the burn function to destroy tokens from a specific address by providing the '_from' address and the desired '_value'.

## License
* This contract is released under the MIT License. Please see the LICENSE file for more information.
