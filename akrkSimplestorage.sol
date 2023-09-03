//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract akrkSimplestorage {
  // basic data types: boolean, uint,int,address,bytes
  //uint(unsigned integer only positive),int both pos and neg
  //address is the address of the account
  //string are secretly byte objects only for text
  //bytes32 is a bytes objects whre 32 represent how many bytes we want them to be,max size is 32
  //byte objects look like 0xsdsysydggt
  //unint256 here 256 is bit (8,16,32 upto 256 we can use)
  uint256 preferredNumber; //remove public so that we don't get duplicate functions at the moment we will just get the retrieve function
  //if we have whole bunch of variables inside the contract akrkSimplestorage those actually get indexed
  //here 'uint256 preferredNumber' will get index to 'zero'
  //below is type mapping of 'string' to 'uint256', visibility is 'public'
  mapping(string => uint256) public nameToPreferredNumber; //Here we have kind of dictionary where we gonna map a specific name to a specific number
  //When we create mapping we initiaize everything to it's null value so every possible string is initialize to having preferredNumber to zero, for that we have to manually change it.
  //Below we have created a new type in our solidity that holds both preferred number and name
  struct Individuals {
    uint256 preferredNumber; //this get indexed to 0
    string name; // this get indexexd to 1
    //whenever we have list of variables inside an object they automatically get indexed
  }

  // here below we create an array of uint256 and now preferred number can be a list or array
  //uint256[] public preferredNumbersList;

  //here below we want an array of Individuals we give it visibility of public and variable name individuals
  Individuals[] public individuals; //it is automatically giving a view function and it will give nothing if it is empty and in it's button the value that it wants is gonna be the index of the object

  // array above is a dynamic array because size of the array is not given at it's initialization if we don't add any size it can be any size and here we gonna work with dynamic array

  //pasing parameter of type uint256 and made the function public
  function store(uint256 _preferredNumber) public {
    preferredNumber = _preferredNumber;
  }

  function retrieve() public view returns (uint256) {
    return preferredNumber;
  }

  //now we will create a function that is going to add individuals to Individual array
  function addCitizen(string memory _name, uint256 _preferredNumber) public {
    individuals.push(Individuals(_preferredNumber, _name)); //Here we have created a push function which is available in our Individuals object
    nameToPreferredNumber[_name] = _preferredNumber; //here we are going to add Individual to the individuals array where we add key name equal to preferred number
    // I have remove the semicolon from the above code
    //Here in the above inside the push function we have created a new Individual object that will take preferred number and name.
    //push Individual in our individual array ,we can also do in this way
  }
  //We don't need the 'name' variable after the above function runs we can keep it as memory
  //We can also keep the name as 'calldata' in that case we can't modify it
}

//0xd9145CCE52D386f254917e481eB44e9943F39138
