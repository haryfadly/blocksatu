pragma solidity 0.5.1;
contract MyContract {
    
    // string public value = "myValue";
    // string public constant value = "myValue";
    // bool public myBool = true;
    // int public myInt = -1;
    // uint public myUint = 1;
    // uint8 public myUint8 = 8;
    // uint256 public myUint256 = 9999;

    // constructor () public {
    //    value = "myValue";
    //    }

    // function get () public view returns (string){
    //    return value;
    //    }

    // function set(string memory _value) public {
    //     value = _value;
    //     }
//    enum State{Waiting, Ready, Active}
//    State public state;

//    constructor () public {
//        state = State.Waiting;
//    } 
//    function activate () public {
//        state = State.Active;
//    }
//    function isActive () public view returns(bool){
//        return state == State.Active;
//    }

    // Person[] public people;
    uint256 public peopleCount = 0;
    mapping (uint => Person) public people;

    address owner;
    modifier onlyOwner(){
        msg.
    }
    
    struct Person {
        uint _id;
        string _firstName;
        string _lastName;
    }



    function addPerson(string memory _firstName, string memory _lastName) public {
        incrementCount();
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
        // people.push(Person(_firstName, _lastName));
    }

    function incrementCount () internal {
        peopleCount +=1;
    }
}