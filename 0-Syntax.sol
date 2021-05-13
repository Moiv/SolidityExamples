// Comments
//
// Lines like this one that start with // are called single line comments
// Comments are not executed, they are comments we leave in the code to explain what we are doing
// or notes on things we want to improve later, or notes on how others can use your code.
// We can also add a single line comment at the end of a valid line of code as shown further below.

/*
Text inside an opening /* and a closing * / are called multi line comments or block comments.
When we have large blocks of comments or instructions we can use this format to save having
to add // to the beginning of each line.
*/

/*
Curly Brackets

Curly brackets are used to group blocks of code together. They look like this {  }
Not all languages use these but solidity does.
Usually you will have a keyword or a definition, then an opening {
    and then the code that goes inside the curly bracket.
    Every opening curly bracket needs its corresponding
    closing curly bracket.
    You can have nested curly brackets inside eachother as illustrated here {
        Notice how every time we open a curly bracket we also increase
        the indentation. This is for readability, clearly identifying
        the nesting. The next closing curly bracket will close this
        level of nesting
        }
    We are back out 1 level of nesting now. We keep going back out 1
    level of nesting each time we encounter a closing curly bracket.
    That is to say, each closing curly bracket closes the *last* opening
    curly bracket encountered, not the first. The indentation helps illustrate
    this.
    }

Most lines of code need to be finished with a semi colon as such ;
You will notice that deifinitions and closing curly brackets do not require a semi colon
to terminate the line;

We start a contract/program with the keyword 'contract' and then the name of our contract followed
by an opening curly bracket. The code that belongs to the contract then goes between this opening
curly bracket and the closing curly bracket.

*/

// The pragma line below is not actually run/executed. It is a directive.
// In this case the directive is specifying the version of the solidity language.
pragma solidity >=0.7.0 <0.9.0;

contract Syntax {
    string firstName;   // This is a single line comment after a valid piece of code
    uint256 age;

    function setAge(uint256 num) public {
        age = num;
    }

    function getAge() public view returns (uint256) {
        return age;     // Another single line comment, just for the fun of it
    }

    function setName(string newName) public {
        firstName = newName;
    }

    function getName() public view returns (string) {
        return firstName;
}
