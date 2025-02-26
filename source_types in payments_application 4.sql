use payments_application;

CREATE TABLE source_types (
    source_id SERIAL PRIMARY KEY,
    source_type_code VARCHAR(10) UNIQUE NOT NULL,
    source_type_desc VARCHAR(50) NOT NULL
);
-- Insert source types
INSERT INTO source_types (source_type_code, source_type_desc) 
VALUES 
('BA', 'Bank Account'),
('WA', 'Wallet Account'),
('TPT', 'Third Party Transaction');

select * from source_types;