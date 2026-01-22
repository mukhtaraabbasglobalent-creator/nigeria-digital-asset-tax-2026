# nigeria-digital-asset-tax-2026
Simulated blockchain digital asset tax and security analysis for Nigeria (2026)
Potential Vulnerabilities:
- Unrestricted minting
- Reentrancy (not used, but awareness)
- Access control issues
- Lack of logging or transparency
### Security Simulation & Threat Awareness

This project demonstrates ethical security practices for NGNToken:

- Access control: only contract owner can mint
- Overflow/underflow: prevented by Solidity 0.8+
- Test vulnerability contract demonstrates risk if mint() were public
- Safe: all simulations are on local blockchain, no real systems touched
# Nigeria Digital Asset Tax Simulator 2026

**Simulated blockchain digital asset tax and security analysis for Nigeria (2026)**

Author: Mukhtar Aliyu  
Role: Cybersecurity & Digital Governance Researcher

---

## Project Overview

This project is a **research-driven, simulated blockchain system** demonstrating:

- A digital Nigerian token (**NGNToken**)  
- Dashboard integration showing wallet balances and minting  
- Simulated **tax calculation** based on token holdings  
- Ethical **security simulation** for vulnerabilities and mitigation

> ⚠️ Disclaimer: This is a **simulated system**. No real tokens, Naira, or government systems are used.

---

## Key Features

1. **NGNToken (ERC20)**
   - Secure minting (owner-only)  
   - Deployed on a local blockchain (Hardhat/Ganache)  

2. **Dashboard**
   - Connects MetaMask wallet  
   - Displays token balance  
   - Mint tokens in simulation  
   - Shows **estimated tax** dynamically  

3. **Digital Asset Tax Calculator**
   - Simulated tax tiers:
     - 0 – 500 NGN → 0%  
     - 501 – 2000 NGN → 5%  
     - 2001 – 5000 NGN → 10%  
     - >5000 NGN → 15%  
   - Updates live when tokens are minted  

4. **Security Simulation**
   - Identified vulnerabilities (unrestricted minting, access control, logging)  
   - Test contract demonstrates what happens if mint() were public  
   - Main contract mitigates risks with owner-only mint  
   - Educational dashboard notes highlight security awareness  

---

## Dashboard Screenshots

> Replace these with your screenshots saved in `docs/` folder

![Wallet Connected](docs/dashboard1.png)  
![Mint & Tax Calculation](docs/dashboard2.png)  

---

## Usage Instructions

1. Clone the repo:

```bash
git clone https://github.com/mukhtaraabbasglobalent-creator/nigeria-digital-asset-tax-2026.git
