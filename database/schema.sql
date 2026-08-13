-- =====================================================================
-- MarvelPay📈 - SYSTEM DATABASE SCHEMA
-- Author: ABIOYE MARVELOUS OLAITAN ENOCH (CEO, Marvel Technologies)
-- =====================================================================

-- BUSINESS RULE: 

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(56) UNIQUE NOT NULL,
    CHECK (username <> ''), -- Prevent user from entering empty username
    email VARCHAR(256) UNIQUE NOT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

