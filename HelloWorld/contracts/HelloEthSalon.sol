pragma solidity ^0.5.0;

contract HelloEthSalon {

   string message = "I know smart contract testing!";

   constructor () public {

   }

   function GetMessage() view public returns (string memory) {
      return message;
   }
}
