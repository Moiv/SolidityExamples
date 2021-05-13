/*
At a very base level programs contain 2 things, they contain data and they contain functionality, or behaviour.
Data is stored in variables, they're called variables because their contents can vary.
Think of a bank balance, it's value needs to change as funds are added and removed.
In a program a person's bank balance would be stored in a variable.

Behaviour is stored inside functions.

Variables
~~~~~~~~~

Variables are locations in your computers memory that store data, or a value as we we call it.
There are 2 steps when using variables. The first is to declare the variable, which just allocates
memory/storage for the variable.
The second step is to assign a value to the variable. Assigning values to variables happens in the
behaviour part of the program. For example inside functions.
To create a variable we first specify the data type and an identifier, the identifier is a name
which we refer to that location in memory and we can use to refer back to that location in memory
at any point in our program to get the data stored there or to re-assign it a new value.

Functions
~~~~~~~~~

This brings us to functions. A function is a "block" of behavour that is grouped together and we can call,
or run, the function as many times as we need from wherever we want to in our program.
*/

// The pragma line below is not actually run/executed. It is a directive.
// In this case the directive is specifying the version of the solidity language.
pragma solidity >=0.7.0 <0.9.0;

contract ProgramStructure {
    string firstName;       // Data
    uint256 age;            // Data

    function setAge(uint256 num) public {               // Behaviour
        age = num;                                      // Behaviour
    }                                                   // Behaviour

    function getAge() public view returns (uint256) {   // Behaviour
        return age;                                     // Behaviour
    }

    function setName(string newName) public {           // Behaviour
        firstName = newName;                            // Behaviour
    }                                                   // Behaviour

    function getName() public view returns (string) {   // Behaviour
        return firstName;                               // Behaviour
    }                                                   // Behaviour
}
