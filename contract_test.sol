pragma solidity >= 0.7.0 <0.9.0;

import "remix_tests.sol";
import "./Contract.sol";

contract ContractTest {

    Counter sut;
    function beforeAll () public {

        sut = new Counter ();

    }

    function shouldIncrement_by_1 () public {

        uint a = sut.value ();

        sut.increment();
        Assert.equal(sut.value(), a + 1, "Should be incremenl by 1");

    }

}