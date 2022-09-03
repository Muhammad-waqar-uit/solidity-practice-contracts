// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    string name = "My String";

    function setName(string memory _name) public {
        name = _name;
    }
    function getname() public view returns (string memory){
        return name;
    }

    function resetname() public {
        name= "Waqar";
    }
}

