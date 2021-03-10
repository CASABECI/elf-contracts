// SPDX-License-Identifier: Apache-2.0

import "./Tranche.sol";
import "./assets/YC.sol";
import "./interfaces/IERC20.sol";

pragma solidity ^0.8.0;

contract YCFactory {
    /// @notice Deploy a new YC contract
    /// @param tranche The Tranche contract associated with this YC.
    /// The Tranche contract is also the mint authority.
    /// @param strategySymbol The symbol of the associated Wrapped Position contract.
    /// @param expiration Expiration timestamp of the Tranche contract.
    /// @param underlyingDecimals The number of decimal places the underlying token adheres to.
    /// @return The deployed YC contract
    function deployYc(
        address tranche,
        string memory strategySymbol,
        uint256 expiration,
        uint8 underlyingDecimals
    ) public returns (YC) {
        return new YC(tranche, strategySymbol, expiration, underlyingDecimals);
    }
}