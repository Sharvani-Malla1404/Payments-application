use payments_application;
CREATE TABLE bank_accounts (
    bank_account_id SERIAL PRIMARY KEY,
    account_number VARCHAR(20) UNIQUE NOT NULL,
    ifsc_code VARCHAR(15) NOT NULL,
    bank_name VARCHAR(100) NOT NULL,
    bank_account_branch_location VARCHAR(100),
    user_id INT REFERENCES user_details(user_id),
    is_active BOOLEAN DEFAULT TRUE);

-- Insert bank accounts
INSERT INTO bank_accounts (account_number, ifsc_code, bank_name, bank_account_branch_location, user_id, is_active) 
VALUES 
('123456789012', 'IFSC001', 'Bank of America', 'New York', 1, TRUE),
('987654321098', 'IFSC002', 'Wells Fargo', 'San Francisco', 2, TRUE);

select * from bank_accounts;