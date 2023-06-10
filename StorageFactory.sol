// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;
import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public listofSimpleStorageContracts;

    function addContract() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listofSimpleStorageContracts.push(newSimpleStorageContract);
    }

    function sfstore(
        uint256 _SimpleStorageIndex,
        uint256 _newSimpleStorageNumber
    ) public {
        SimpleStorage mySimpleStorage = listofSimpleStorageContracts[
            _SimpleStorageIndex
        ];
        mySimpleStorage.store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _SimpleStorageIndex) public view returns (uint256) {
        SimpleStorage mySimpleStorage = listofSimpleStorageContracts[
            _SimpleStorageIndex
        ];
        return mySimpleStorage.retrieve();
    }
}
