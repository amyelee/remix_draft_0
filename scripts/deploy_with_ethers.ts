// This script can be used to deploy the "Storage" contract using ethers.js library.
// Please make sure to compile "./contracts/1_Storage.sol" file before running this script.
// And use Right click -> "Run" from context menu of the file to run the script. Shortcut: Ctrl+Shift+S

import { deploy } from './ethers-lib'

(async () => {
  try {
    const result = await deploy('UChicagoFinMath', ["0x035E2Ee7aB6506F6B3e9d64b3fC774D3eB7D6a42"])
    console.log(`address: ${result.address}`)
  } catch (e) {
    console.log(e.message)
  }
})()