// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <=0.9.0;

library ArrayUtils {
    function getMax(uint[] calldata a) public pure returns (uint max) {
        max = 0;
        uint max_index = 0;
        for (uint i = 0; i < a.length; i++) {
            if (a[i] >= max) {
                max_index = i;
                max = a[i];
            }
        }
    }

    function range(uint l) internal pure returns (uint[] memory r) {
        r = new uint[](l);      
        for (uint i = 0; i < l; i++) {
            r[i] = i;
        }
    }
}

contract ArraysUser {
    using ArrayUtils for *;
    
    function getMax(uint l) public pure returns (uint max) {
        max = ArrayUtils.range(l).getMax();
    }
}