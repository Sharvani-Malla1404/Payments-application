use payments_application;
CREATE TABLE txn_details (
    txn_id SERIAL PRIMARY KEY,
    txn_date_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    source_id INT REFERENCES source_types(source_id),
    target_id INT REFERENCES source_types(source_id),
    source_type_id INT REFERENCES source_types(source_id),
    destination_type_id INT REFERENCES source_types(source_id)
);

-- Insert transactions
INSERT INTO txn_details (txn_date_time, source_id, target_id, source_type_id, destination_type_id) 
VALUES 
('2024-02-01 10:30:00', 1, 2, 1, 2),
('2024-02-02 11:00:00', 2, 1, 2, 1);
select * from txn_details;
