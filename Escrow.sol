contract Escrow {

  address public buyer;
  address public seller;
  address public arbiter;

  function Escrow(address _seller, address _arbiter) {
    // constructor function for initialization
    buyer = msg.sender;
    seller = _seller;
    arbiter = _arbiter;
  }
}
