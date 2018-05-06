create or replace package body sample_data_pkg as
  
procedure delete_data is
begin
  delete DEMO_CUSTOMERS;
end delete_data;

procedure insert_data is
  i           dbms_sql.varchar2_table;
  j           dbms_sql.varchar2_table default wwv_flow_api.empty_varchar2_table;
  l_blob      blob;
begin
  -- Table: DEMO_CUSTOMERS
  INSERT INTO demo_customers (customer_id, cust_first_name, cust_last_name, cust_street_address1, cust_street_address2, cust_city, cust_state, cust_postal_code, cust_email, phone_number1, phone_number2, url, credit_limit, tags)
   VALUES(1, 'John', 'Dulles', '45020 Aviation Drive', null, 'Sterling', 'VA', '20166', 'john.dulles@email.com', '703-555-2143', '703-555-8967', 'http://www.johndulles.com', 1000, null);
  INSERT INTO demo_customers (customer_id, cust_first_name, cust_last_name, cust_street_address1, cust_street_address2, cust_city, cust_state, cust_postal_code, cust_email, phone_number1, phone_number2, url, credit_limit, tags)
    VALUES(2, 'William', 'Hartsfield', '6000 North Terminal Parkway', null, 'Atlanta', 'GA', '30320', null, '404-555-3285', null, null, 1000, 'Repeat customer');
  INSERT INTO demo_customers (customer_id, cust_first_name, cust_last_name, cust_street_address1, cust_street_address2, cust_city, cust_state, cust_postal_code, cust_email, phone_number1, phone_number2, url, credit_limit, tags)
    VALUES(3, 'Edward', 'Logan', '1 Harborside Drive', null, 'East Boston', 'MA', '02128', null, '617-555-3295', null, null, 1000, 'Repeat customer');
  INSERT INTO demo_customers (customer_id, cust_first_name, cust_last_name, cust_street_address1, cust_street_address2, cust_city, cust_state, cust_postal_code, cust_email, phone_number1, phone_number2, url, credit_limit, tags)
    VALUES(4, 'Frank', 'OHare', '10000 West OHare', null, 'Chicago', 'IL', '60666', null, '773-555-7693', null, null, 1000, null);
  INSERT INTO demo_customers (customer_id, cust_first_name, cust_last_name, cust_street_address1, cust_street_address2, cust_city, cust_state, cust_postal_code, cust_email, phone_number1, phone_number2, url, credit_limit, tags)
    VALUES(5, 'Fiorello', 'LaGuardia', 'Hangar Center', 'Third Floor', 'Flushing', 'NY', '11371', null, '212-555-3923', null, null, 1000, null);
  INSERT INTO demo_customers (customer_id, cust_first_name, cust_last_name, cust_street_address1, cust_street_address2, cust_city, cust_state, cust_postal_code, cust_email, phone_number1, phone_number2, url, credit_limit, tags)
    VALUES(6, 'Albert', 'Lambert', '10701 Lambert International Blvd.', null, 'St. Louis', 'MO', '63145', null, '314-555-4022', null, null, 1000, null);
  INSERT INTO demo_customers (customer_id, cust_first_name, cust_last_name, cust_street_address1, cust_street_address2, cust_city, cust_state, cust_postal_code, cust_email, phone_number1, phone_number2, url, credit_limit, tags)
    VALUES(7, 'Eugene', 'Bradley', 'Schoephoester Road', null, 'Windsor Locks', 'CT', '06096', null, '860-555-1835', null, null, 1000, 'Repeat customer');
  
end insert_data;
end sample_data_pkg;
/
