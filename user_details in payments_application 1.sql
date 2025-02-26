use payments_application;
CREATE TABLE user_details (
    user_id SERIAL PRIMARY KEY,
    user_name VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone_num VARCHAR(15) UNIQUE,
    email VARCHAR(100) UNIQUE,
    address TEXT
);
-- Insert users
INSERT INTO user_details (user_name, password, first_name, last_name, phone_num, email, address) 
VALUES 
('Radha_Krishna', 'securepass123', 'Radha', 'Krishna', '9876543210', 'radha.krishna@example.com', '123 Elm Street'),
('Shri_Radha', 'mypassword', 'Shri', 'Radha', '8765432109', 'shri.radha@example.com', '456 Oak Street');

select * from user_details;
alter table user_details add column DOB date;
select * from user_details;
update user_details set DOB= '2005-05-14' where user_id=1;
update user_details set DOB= '2006-05-08' where user_id=2;
select * from user_details;
alter table user_details modify column address text not null;
select * from user_details;
INSERT INTO user_details (user_name, password, first_name, last_name, phone_num, email, address,DOB) 
VALUES 
('Shiva_Symala', 'securepass123', 'Shiva', 'Symala', '9786543214', 'shiva.symala@example.com', 'null','null');
select * from user_details;