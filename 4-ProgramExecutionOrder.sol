/*
So far we have talked about declaring variables and declaring functions but this is just the blueprint
for our program, none of it is actually running yet. In a typical project you may have 50 files for example
just like this one which are blueprints for data and behaviour, and then you may have only one file which
is the logic and controls the execution part of the program. It will call the bits and pieces out of the
other 50 files to perform operations.

This brings us to program execution order. A program is not run from top to bottom as you see it in the code.
The program execution jumps all over the place depending on certain conditions in the main program file.
In layman's terms your program will say "if something" then "do something", "if something else" then
"do something else" etc, and the program execution will jump to the relevant parts of the code.
*/

pragma solidity >=0.7.0 <0.9.0;

contract ProgramStructure {
    string firstName;
    uint256 age;

    function setAge(uint256 num) public {
        age = num;
    }

    function getAge() public view returns (uint256) {
        return age;
    }

    function celebrateBirthday() public {
        uint256 addToAge = 1;

        age = age + addToAge;
    }

    function setName(string name) public {
        firstName = name;
    }

    function getName() public view returns (string) {
        return firstName;
    }
}
