const hre = require("hardhat");

async function main() {
    const Token = await hre.ethers.getContractFactory("BasedPepe");
    const token = await Token.deploy();
    console.log("token deployed to:", token.target);
}

// call the function
main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });