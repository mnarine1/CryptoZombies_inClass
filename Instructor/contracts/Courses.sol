pragma solidity ^0.5.0;

contract Courses {

   // Structure for an Instructor Object
   struct Instructor {
      uint age;
      string fName;
      string lName;
   }

   mapping (address => Instructor) instructors; // Maps the addresses to each instructor
   address[] public instructorAccts;            // Contains the addresses of all instructors

   // Creates a new instructor ans stores it to instructors using the address as the key
   // Stores the address (key) in the instructorAccts
   function setInstructor(address _address, uint _age, string memory _fName, string memory _lName) public {
      instructors[_address] = Instructor(_age, _fName, _lName);
      instructorAccts.push(_address);
   }

   // Returns an array containing the addresses of all instructors
   function getInstructors() view public returns (address[] memory) {
      return instructorAccts;
   }

   // Returns the age, first name, and last name of the instructor at the given address
   function getInstructor(address _address) view public returns (uint, string memory, string memory) {
      return (instructors[_address].age, instructors[_address].fName, instructors[_address].lName);
   }

   // Returns the number of instructors stored in instructorAccts
   function countInstructors() view public returns (uint) {
      return instructorAccts.length;
   }
}
