-- Insert initial data into the ADMIN table
INSERT INTO ADMIN (first_name, last_name, username, email_address, password)
VALUES ('Tenimba', 'Coulibaly', 'tcoul050', 'tcoul050@uOttawa.ca', 'Tenimba300086545');

-- Insert initial data into the Injury_List table
INSERT INTO Injury_List (injury_type, injury_severity)
VALUES ('Fracture', 3), ('Sprain', 2);

-- Insert initial data into the Another_Injury_List table
INSERT INTO Another_Injury_List (injury_type, injury_severity)
VALUES ('Burn', 4), ('Cut', 1);