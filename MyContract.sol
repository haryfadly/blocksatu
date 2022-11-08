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
    mapping(uint256 => Person) public people;

    uint256 openingTime;

    modifier onlyWhileOpen() {
        require(block.timestamp >= openingTime);
        _;
    }

    struct Person {
        uint256 _id;
        string _firstName;
        string _lastName;
    }

    constructor() public {
        openingTime = 1667878939; //update this value
    }

    function addPerson(
        string memory _firstName, 
        string memory _lastName)
        public
        onlyWhileOpen
    {
        incrementCount();
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
        // people.push(Person(_firstName, _lastName));
    }

    function incrementCount() internal {
        peopleCount += 1;
    }
}
