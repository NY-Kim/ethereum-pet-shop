pragma solidity ^0.5.0;

contract Adoption {

	address[16] public adopters;
	address payable owner = address(uint160(address(this)));

	// Adopting a pet
	function adopt(uint petId) public payable returns (uint) {
		require(petId >= 0 && petId <= 15);

		adopters[petId] = msg.sender;
		return petId;
	}

	// Retrieving the adopters
	function getAdopters() public view returns (address[16] memory) {
		return adopters;
	}

}