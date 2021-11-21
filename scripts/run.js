// HRE = hardhat runtime environment
// no need to import it
const main = async () => {
    // compile contract and generate the necessary files we need to work with our contract 
    // under the artifacts directory
    const waveContractFactory = await hre.ethers.getContractFactory('WavePortal');

    // create local blockchain network for this contract 
    const waveContract = await waveContractFactory.deploy();
    await waveContract.deployed();
    console.log("Contract deployed to:", waveContract.address);
  };
  
  const runMain = async () => {
    try {
      await main();
      process.exit(0);
    } catch (error) {
      console.log(error);
      process.exit(1);
    }
  };
  
  runMain();


// npx hardhat run scripts/run.js