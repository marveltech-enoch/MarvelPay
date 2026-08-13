# 💳 MarvelPay (v1.0)
*Core Financial Engine & Wallet Transaction System*

## 🎯 Core Capabilities (v1.0 Scope)
1. **User Onboarding:** Register new users with unique usernames and verified email addresses.
2. **Wallet Initialization:** Automatically assign a zero-balance ($0.00) wallet to every registered user upon creation.
3. **Funding Engine:** Allow users to deposit funds securely into their wallets.
4. **Transfer Engine:** Enable instant peer-to-peer (P2P) transfers with strict overdraft protection (`balance >= 0`).
5. **Audit Trail:** Maintain an immutable transaction log with timestamps for full financial accountability.

## 🏗️ Architecture
- **Database Layer:** PostgreSQL (`database/schema.sql`)