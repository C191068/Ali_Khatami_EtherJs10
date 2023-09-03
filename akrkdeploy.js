const { ethers } = require("ethers")
const fs = require("fs-extra")
require("dotenv").config()

async function main() {
  const provider = ethers.getDefaultProvider(process.env.RPC_URL)

  const wallet = new ethers.Wallet(process.env.PRIVATE_KEY, provider)
  //const encryptedJson = fs.readFileSync("./.encryptedKey.json", "utf-8")
  //let wallet = new ethers.Wallet.fromEncryptedJsonSync(
  //encryptedJson,
  //process.env.PRIVATE_KEY_PASSWORD
  //)
  // wallet = await wallet.connect(provider)

  const abi = fs.readFileSync(
    "./akrkSimplestorage_sol_akrkSimplestorage.abi",
    "utf8"
  )

  const binary = fs.readFileSync(
    "./akrkSimplestorage_sol_akrkSimplestorage.bin",
    "utf8"
  )

  const contractFactory = new ethers.ContractFactory(abi, binary, wallet)
  console.log("Executing, please be patient...")
  const contract = await contractFactory.deploy()
  await contract.deployTransaction.wait(1)
  console.log(`Contract Address: ${contract.address}`)

  const currentFavoriteNumber = await contract.retrieve()
  console.log(`Current Favorite Number: ${currentFavoriteNumber.toString()}`)
  const transactionResponse = await contract.store("7")
  const transactionReceipt = await transactionResponse.wait(1)
  const updatedFavoriteNumber = await contract.retrieve()
  console.log(`Updated favorite number is: ${updatedFavoriteNumber} `)
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error)
    process.exit(1)
  })
