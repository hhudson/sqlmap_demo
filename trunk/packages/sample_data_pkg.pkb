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
  INSERT INTO USER_TABLE (ID, NAME, ADDRESS, STATE, CITY, EMAIL, PASSWORD, PASSWORD_HASH, USERNAME) 
    VALUES('1','Shon Capetl', '93 Vaqueria Blvd','NY','Tanquecitos', 'gricelda.luebbers@aaab.com','Orci','�m�i��]/���+o','scapetl');
  INSERT INTO USER_TABLE (ID, NAME, ADDRESS, STATE, CITY, EMAIL, PASSWORD, PASSWORD_HASH, USERNAME) 
    VALUES('2','Tressa Coppens','969 Stonefort Place','CT','Sugarloaf','dean.bollich@aaac.com','Molestie','	�	<����jF','tcoppens');
  INSERT INTO USER_TABLE (ID, NAME, ADDRESS, STATE, CITY, EMAIL, PASSWORD, PASSWORD_HASH, USERNAME) 
    VALUES('3','Gricelda Luebbers','365 Orrville Street','NY','Dale City','milo.manoni@aaad.com','Velit','��t`8~�Oj����','gluebbers');
  INSERT INTO USER_TABLE (ID, NAME, ADDRESS, STATE, CITY, EMAIL, PASSWORD, PASSWORD_HASH, USERNAME) 
    VALUES('4','Stephen Butler','806 Eldon Place','CT','Grosvenor','laurice.karl@aaae.com','Neque','*�������=f��J','sbutler');
  INSERT INTO USER_TABLE (ID, NAME, ADDRESS, STATE, CITY, EMAIL, PASSWORD, PASSWORD_HASH, USERNAME) 
    VALUES('5','Anthony Boone','767 Lake Norman of Catawba Ave','MD','Riverside','august.rupel@aaaf.com','Amet','�����-L�/t�','aboone');
  INSERT INTO USER_TABLE (ID, NAME, ADDRESS, STATE, CITY, EMAIL, PASSWORD, PASSWORD_HASH, USERNAME) 
    VALUES('6','James Williams','265 Vevay Street','MD','Ridgeley','salome.guisti@aaag.com','Elit','���^S�Hk���r','jwilliams');
  INSERT INTO USER_TABLE (ID, NAME, ADDRESS, STATE, CITY, EMAIL, PASSWORD, PASSWORD_HASH, USERNAME) 
    VALUES('7','Christopher Allen','690 Wimmenau Ave','VA','Ashley Heights','lovie.ritacco@aaah.com','Blandit','!��O�*�;9���:b2','callen');
  INSERT INTO USER_TABLE (ID, NAME, ADDRESS, STATE, CITY, EMAIL, PASSWORD, PASSWORD_HASH, USERNAME) 
    VALUES('8','Raymond Bailey','192 Tremadog Blvd','TX','Monfort Heights','chaya.greczkowski@aaai.com','Sit','�r���g���/�y','rbailey');
  INSERT INTO USER_TABLE (ID, NAME, ADDRESS, STATE, CITY, EMAIL, PASSWORD, PASSWORD_HASH, USERNAME) 
    VALUES('9','Gricelda Luebbers','521 North Lilbourn Street','TX','Point Marion','twila.coolbeth@aaaj.com','Justo','�;B_>�U����~%:','galuebbers');
  INSERT INTO USER_TABLE (ID, NAME, ADDRESS, STATE, CITY, EMAIL, PASSWORD, PASSWORD_HASH, USERNAME) 
    VALUES('10','Love Whistlehunt','339 Tygh Valley Street','MD','Eldon','carlotta.achenbach@aaak.com','Gravida','��a�M[','lwhistlehunt');
  INSERT INTO USER_TABLE (ID, NAME, ADDRESS, STATE, CITY, EMAIL, PASSWORD, PASSWORD_HASH, USERNAME) 
    VALUES('11','Opal Cruz','681 Anieves Ave','VA','Greendale','jeraldine.audet@aaal.com','Pharetra','*�?y&','ocruz');
  INSERT INTO USER_TABLE (ID, NAME, ADDRESS, STATE, CITY, EMAIL, PASSWORD, PASSWORD_HASH, USERNAME) 
    VALUES('12','Kimiko Brien','752 Mission Bend Ave','MD','Ammon','august.arouri@aaam.com','Suspendiss','JlS�������','kbrien');
  INSERT INTO USER_TABLE (ID, NAME, ADDRESS, STATE, CITY, EMAIL, PASSWORD, PASSWORD_HASH, USERNAME) 
    VALUES('13','Paz Montilla','598 Chesaning Street','AK','Wallsburg','ward.stepney@aaan.com','Sit','�r���g���/�y','pmontilla');
  INSERT INTO USER_TABLE (ID, NAME, ADDRESS, STATE, CITY, EMAIL, PASSWORD, PASSWORD_HASH, USERNAME) 
    VALUES('14','Norman Lobregat','269 Brazos Bend Street','AK','De Pue','ayana.barkhurst@aaao.com','Non','fy�\�+,Z���!�','nlobregat');
  INSERT INTO USER_TABLE (ID, NAME, ADDRESS, STATE, CITY, EMAIL, PASSWORD, PASSWORD_HASH, USERNAME) 
    VALUES('15','Luther Ardinger','809 Surf City Place','MD','Prompton','luana.berends@aaap.com','Fusce','�6!9}Yu�T�e','lardinger');
end insert_data;
end sample_data_pkg;
/
