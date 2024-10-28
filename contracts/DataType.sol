
contract TypesExample {
    uint256 public number;
    uint256 private other_number;
    bytes20 byte_me;
    string my_favorite_string;
    bool george;

    address account;

    struct Person {
        string name;
        uint256 account_balance;
        address adr;
    }

    Person person;

    mapping(string => uint256) favoriteNumbers;

    Person[]holders;

    address payable public owner = payable(0x035E2Ee7aB6506F6B3e9d64b3fC774D3eB7D6a42); //put some wallet address or smth here?

    function set_favorite_number(string memory name, uint256 _number) public{ 
        // writes things on the blockchain 
        favoriteNumbers[name] = _number;
    }
    // function (<parameter types>) (internal|external) [pure|view|payable] [retruns(return types)]
    // visibility markers: public, private, internal, external
    // pure (functino you could have written outside blockchain), view (uses information from blockchain), payable
    function my_func(int a, int b) pure public returns(int) {
        return a + b;
    }
    
    function get_favorite_number(string memory name) public view returns(uint256) { // store tempoarily in memory and discard after use
        return favoriteNumbers[name];
    }

    function bla(int a) internal pure{
        // retuurn nothing
    }

    // public payable function
    function send_money() public payable{
        payable(msg.sender).transfer(0)
    }

}
