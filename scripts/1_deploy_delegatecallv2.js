const { ethers } = require("hardhat");

async function main(){
  console.log("Deploying Logic V2 contract ...");
  const LogicV2 = await ethers.getContractFactory("LogicV2");
  const logicv2 = await LogicV2.deploy();
  await logicv2.deployed();
  console.log("Logic V2 contract deployed at : ",logicv2.address);
  
  console.log("Deploying Delegate call V2 contract...");
  const DelegateCallV2 = await ethers.getContractFactory("DelegateCallV2");
  const delegateCallv2 = await DelegateCallV2.deploy(logicv2.address);
  await delegateCallv2.deployed();
  console.log("DelegateCall V2 contract deployed at : ",delegateCallv2.address);

  console.log("Deploying Attack V2 contract...");
  const AttackV2 = await ethers.getContractFactory("AttackV2");
  const attackv2 = await AttackV2.deploy(delegateCallv2.address);
  await attackv2.deployed();
  console.log("Deployed Attack V2 contract at : ",attackv2.address);
}

main();