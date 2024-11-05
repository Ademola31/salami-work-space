// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract storenumber{
    // state variable
  uint256 public  myuint =30;
  string public  mystring = "the salami";
   bool public mybool = true;
   address public myAddress = 0x1234567890123456789012345678901234567890;
   bytes32 public mybytes = 0x1234567890123456789012345678901234567890123456789012345678901234;


   // setter function
   function setuintnumber(uint256 _myunit)public {
    myuint =_myunit;
   }
   function setmystring(string memory _mystring) public {
    mystring = _mystring;
   }
  
  // getter function
  function getuintnumber() public view returns  (uint256) {
    return  myuint;
  }
  function getmystring() public view returns (string memory) {
    return mystring;
  }


    

}