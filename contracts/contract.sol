pragma solidity ^0.8.0;

contract Counter{
    string public name;
    //store values for increase and decrease count(contract info)
    uint public count; //unsigned integer means not negative
    //public means available at public 
  
   //when its put on a blockchain constructor intializer for contract (runs only once)
constructor (string memory _name, uint _intialcount){
    name = _name; //underscore to deffrentiate vaiables
    count= _intialcount;
}
//visibility using public 
//increment function
    function increment() public returns (uint newCount) {
        count=count+1; //can use (count ++)
        return count;
    }

    //decrement function
    function decrement() public returns (uint newCount){
        count --;
        return count;
    }

    //explicit function
    //view read function from the chain but no modification at all 
    //just reader function
    function getCount() public view returns(uint){
        return count;
    }
    function getName() public view returns(string memory currentName){
        return name;
    }

    //update state function
    //sets name
    function setName(string memory _newName) public returns (string memory newName) {
        name = _newName ;
        return name;
    }
}