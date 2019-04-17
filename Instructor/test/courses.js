var Courses = artifacts.require('./Courses.sol');

contract('Courses:GetInstructors', function(accounts) {
   it("should return an Instructor named Billy Bob", async function() {
      var contract = await Courses.deployed();
      await contract.setInstructor.call('0x7040d98c4971a1ede759e45e7889a1483adbf496', 32, 'Billy', 'Bob');
      var result = await contract.getInstructor.call('0x7040d98c4971a1ede759e45e7889a1483adbf496');
      assert.isTrue(result[0] === 32 && result[1] === "Billy" && result[2] === "Bob");
   });

   it("should return a list of instructors", function(done) {
      var contract = Courses.deployed();
      contract.then(function(c) {
         return c.getInstructors.call();
      }).then(function(result) {
         assert.isTrue(result === 1);
      });
   });
});
