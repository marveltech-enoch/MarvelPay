-- =====================================================================
-- MarvelPay📈 - SYSTEM DATABASE SCHEMA
-- Author: ABIOYE MARVELOUS OLAITAN ENOCH (CEO, Marvel Technologies)
-- =====================================================================

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(56) UNIQUE NOT NULL,
    CHECK (username <> ''), -- Prevent empty usernames
    email VARCHAR(256) UNIQUE NOT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE wallets (
    wallet_id SERIAL PRIMARY KEY,
    user_id INT UNIQUE NOT NULL REFERENCES users(user_id) ON DELETE CASCADE,
    balance NUMERIC(10, 2) NOT NULL DEFAULT 0.00 CHECK (balance >= 0.00),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

