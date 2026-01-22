// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract NGNToken is ERC20, Ownable {
    constructor() ERC20("Nigerian Digital Naira", "NGN") {}

    // Mint new tokens (simulate printing digital currency)
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
const hre = require("hardhat");

async function main() {
  const [deployer] = await hre.ethers.getSigners();
  const NGN = await hre.ethers.getContractFactory("NGNToken");
  const token = await NGN.deploy();
  await token.deployed();

  console.log("NGNToken deployed to:", token.address);

  // Mint 1000 NGN tokens to deployer (simulation)
  const tx = await token.mint(deployer.address, hre.ethers.utils.parseUnits("1000", 18));
  await tx.wait();
  console.log("Minted 1000 NGN tokens to deployer:", deployer.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
