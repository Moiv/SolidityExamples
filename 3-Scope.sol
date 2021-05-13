/*
Now that we know what variables are and functions are let's talk about the scope. When you define a variable directly
inside a contract (not inside a fucntion) that variable is called a global variable and belongs to the contract which
means anything else inside the contract can see that variable.

If you have a function that performs certain complex operations and it needs variables to store data while it's progressing,
the variables you declare inside that function are inside that functions scope and are called local variables.
Which means no other functions in your contract/program will see that variable, and when that function has finished execution
that variable is discarded. Next time you go into that function the variable is recreated, so it will not have the value
it had last time you were in the function. This is referred to as the variables lifetime. So a variable declared directly
inside the contract has the same lifetime as that contract. However long that contract exists that variable exists.
A variable declared inside a function has the lifetime of a single execution of that function.

Generally speaking global variables (variables defined at the contract level) should only be used when you *need* the value
to persist for the lifetime of the contract/program and be available to everything inside the contract. This is because they
can be prone to introducing bugs, because the longer a variable is alive the more chance something is going to change it
that shouldn't have, and then when we rely on the data that's in that variable, it may not be what we were expecting and
we may have a problem. The likelyhood of this increases as our programs get larger.
*/

pragma solidity >=0.7.0 <0.9.0;

contract ProgramStructure {
    string firstName;	// Global Variable
    uint256 age;		// Global Variable

    function setAge(uint256 num) public {
        age = num;
    }

    function getAge() public view returns (uint256) {
        return age;
    }

    function celebrateBirthday() public {
        uint256 addToAge = 1;	// This is a local variable. It exists only inside this function.
								// Other functions cannot see or use this variable

        age = age + addToAge;
    }

    function setName(string newName) public {
        firstName = newName;
    }

    function getName() public view returns (string) {
        return firstName;
    }
}
