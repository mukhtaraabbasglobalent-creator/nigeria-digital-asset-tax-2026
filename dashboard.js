function calculateTax(balance) {
    if (balance <= 500) return 0;
    if (balance <= 2000) return balance * 0.05;
    if (balance <= 5000) return balance * 0.10;
    return balance * 0.15;
}
async function updateBalance() {
  async function updateBalance() {
    const walletAddress = await signer.getAddress();
    const balance = await contract.balanceOf(walletAddress);

    const formattedBalance = parseFloat(
        ethers.utils.formatUnits(balance, 18)
    );

    document.getElementById("balance").innerText = formattedBalance;

    // TAX CALCULATION
    const tax = calculateTax(formattedBalance);
    document.getElementById("tax").innerText = tax.toFixed(2);
  }
// SECURITY NOTE: Only the contract owner can mint tokens.
// Simulated vulnerability: if mint() were public, anyone could inflate tokens.
