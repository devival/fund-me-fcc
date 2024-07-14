// SPDX-License-Identifier: MIT
  
pragma solidity ^0.8.8;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
import "./PriceConverter.sol";

error FundMe__NotOwner();

/** @title A contract for crowd funding
 * @author Patrick Collins
 * @notice This contract is to demo a sample funding contract
 * @dev This implements the price feeds as our library
 */
contract FundMe {
    // Type Declarations
    using PriceConverter for uint256;

    // State Variables
    mapping(address => uint256) private addressToAmountFunded;
    address[] private funders;
