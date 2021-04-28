pragma solidity >= 0.7.0 <0.9.0;

contract Counter {

    uint256 public value = 1;

    event Changed();

    function increment () external{

        value = value + 1;
    }

    function incrementO (uint _step)
    external
    returns (uint) {

        value = value + _step;
        emit Changed();

        return value;


    }
}


