// SPDX-License-identifier : MIT


pragma solidity 0.8.21;
// import ERC20 from openzeppelin 
 import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
 
 contract  selimtoken is ERC20  {
   address public owner;

  // modifier to restrict access to owner
   modifier onlyowner() {
      require(msg.sender == owner, "you are not the owner");
   _;
}

   //// constructor to set owner
   constructor () ERC20 ("SALAMI","SAL")
     {
    owner = msg.sender;

    _mint(msg.sender , 500_000_000 *10 ** decimals
    ());
}

   // add number
  function add(uint256 a, uint256 b) public pure returns (uint256){
    return a + b;
  }

  //subtract number

  function substract(uint256 a, uint256 b) public pure returns (uint256){
    require (a >= b, "underflow error: result will be negative" );
    return a -b;
  }

   // Divide number
  function division(uint256 a, uint256 b) public pure returns (uint256){
    require(b > 0, "Division by zero is not valid");
    return a / b;
  }

   // function if, ifelse, ifelseif
  function mynumber(uint256 number) public pure returns (string memory){
    require(number <= 100, "number must be 100 or less");

   if (number <= 90) {
    return "this is positive";
   }
   else if (number >= 150) {
    return "this is negative";
   }
   else {
    return "this is zero";
   }
  }

  function classifynumber () public onlyowner returns (string memory){
    return "you dont have access to this";
  }

 



}