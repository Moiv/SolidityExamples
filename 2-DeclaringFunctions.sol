/*
To declare a fucntion we start with the "function" keyword, then the name of the function, then a pair of regular brackets, then an opening curly bracket.
If the function requires any data/variables to be able to operate we can specify these inside the regular brackets.

For functions that need to return data we can also specify a return type.
A return type is data that will come back from that function when it has finished executing.

The function name, input data & return data is called the function's signiture.

After declaring the function we write the actual code after the opening curly bracket.
At the end of the function we close the function with a closing curly bracket
*/

pragma solidity >=0.7.0 <0.9.0;

contract ProgramStructure {
    string firstName;
    uint256 age;

    function setAge(uint256 num) public {				// This line is the function definition/signiture
        age = num;										// This is actual code that runs unside the function
    }													// This is the closing curly bracket

    function getAge() public view returns (uint256) {	// Function definition/signiture
        return age;										// Code
    }													// Closing curly bracket

    function setName(string newName) public {			// Function definition/signiture
        firstName = newName;							// Code
    }													// Close

    function getName() public view returns (string) {
        return firstName;
    }
}
