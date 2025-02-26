use payments_appliction;

CREATE TABLE user_account_details (
    user_account_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES user_details(user_id),
    account_open_date DATE NOT NULL,
    current_wallet_balance DECIMAL(15,2) DEFAULT 0.00,
    linked_bank_accounts_count INT DEFAULT 0
);


-- Insert user account details
INSERT INTO user_account_details (user_id, account_open_date, current_wallet_balance, linked_bank_accounts_count) 
VALUES 
(1, '2023-06-01', 5000.00, 1),
(2, '2023-07-15', 3000.00, 1);
select * from user_account_details;

