--- create table and add pk
create table "bookshop".test_task (
    test_id INT NOT NULL,
    name VARCHAR(10) NOT NULL,
    CONSTRAINT pk_test_test_id PRIMARY KEY (test_id)
);

--- add data
INSERT ALL 
    INTO "bookshop".test_task VALUES (1, 'first')
    INTO "bookshop".test_task VALUES (2, 'second')
    INTO "bookshop".test_task VALUES(3, 'third')
    SELECT * FROM dual;

--- show added data
SELECT * FROM "bookshop".test_task;

--- rename column
alter table "bookshop".test_task RENAME COLUMN name TO test_name; 

--- set column - unused
alter table "bookshop".test_task SET UNUSED COLUMN test_name;

--- show unused columns
SELECT * FROM DBA_UNUSED_COL_TABS;
    
--- delete unused columns    
ALTER TABLE "bookshop".test_task DROP UNUSED COLUMNS;

--- delete data from table
TRUNCATE TABLE "bookshop".test_task;

--- delete table from scheme
DROP TABLE "bookshop".test_task PURGE;


--- creating sequences for pks

CREATE SEQUENCE author_seq
    MINVALUE 1 
    START WITH 1
    INCREMENT BY 1
    CACHE 20;
    
CREATE SEQUENCE book_cover_type_seq
    MINVALUE 1 
    START WITH 1
    INCREMENT BY 1
    CACHE 20;
  
CREATE SEQUENCE book_form_seq
    MINVALUE 1 
    START WITH 1
    INCREMENT BY 1
    CACHE 20;   
    
CREATE SEQUENCE customer_seq
    MINVALUE 1 
    START WITH 1
    INCREMENT BY 1
    CACHE 20;
   
CREATE SEQUENCE employee_seq
    MINVALUE 1 
    START WITH 1
    INCREMENT BY 1
    CACHE 20;    
    
CREATE SEQUENCE genre_seq
    MINVALUE 1 
    START WITH 1
    INCREMENT BY 1
    CACHE 20;  
    
CREATE SEQUENCE order_seq
    MINVALUE 1 
    START WITH 1
    INCREMENT BY 1
    CACHE 20;     
    
CREATE SEQUENCE paper_type_seq
    MINVALUE 1 
    START WITH 1
    INCREMENT BY 1
    CACHE 20;     
    
CREATE SEQUENCE position_seq
    MINVALUE 1 
    START WITH 1
    INCREMENT BY 1
    CACHE 20;    
    
CREATE SEQUENCE product_seq
    MINVALUE 1 
    START WITH 1
    INCREMENT BY 1
    CACHE 20;     
        
CREATE SEQUENCE stationery_type_seq
    MINVALUE 1 
    START WITH 1
    INCREMENT BY 1
    CACHE 20;      
    
CREATE SEQUENCE type_of_cover_seq
    MINVALUE 1 
    START WITH 1
    INCREMENT BY 1
    CACHE 20;      
    
--- insert data into table author 
INSERT INTO author (author_id, full_name, country, popularity) VALUES (author_seq.nextval, 'Stephen King', 'USA', 15280333); 
INSERT INTO author (author_id, full_name, country, popularity) VALUES (author_seq.nextval, 'Joanne Rowling', 'Great Britain', 30021165);
INSERT INTO author (author_id, full_name, country, popularity) VALUES (author_seq.nextval, 'Ray Bradbury', 'USA', 5999154);
INSERT INTO author (author_id, full_name, country, popularity) VALUES (author_seq.nextval, 'Arthur Conan Doyle', 'Great Britain', 98712666);
INSERT INTO author (author_id, full_name, country, popularity) VALUES (author_seq.nextval, 'Dan Brown', 'USA', 3999578);
INSERT INTO author (author_id, full_name, country, popularity) VALUES (author_seq.nextval, 'John Ronald Reuel Tolkien', 'Great Britain', 5164889);
INSERT INTO author (author_id, full_name, country, popularity) VALUES (author_seq.nextval, 'Agatha Christie', 'Great Britain', 9744877); 
INSERT INTO author (author_id, full_name, country, popularity) VALUES (author_seq.nextval, 'Charles Dickens', 'Great Britain', 2599851);
INSERT INTO author (author_id, full_name, country, popularity) VALUES (author_seq.nextval, 'Lewis Carroll', 'Great Britain', 697254123); 
INSERT INTO author (author_id, full_name, country, popularity) VALUES (author_seq.nextval, 'Mikhail Bulgakov', 'USSR', 25367489);

--- insert data into table customer
INSERT INTO customer (customer_id, gender, age, profession, "NAME", "NUMBER") VALUES
        (customer_seq.nextval, 'm', 23, 'student',  'VR', '9690657786');
INSERT INTO customer (customer_id, gender, age, profession, "NAME", "NUMBER") VALUES
        (customer_seq.nextval, 'f', 21, 'student', 'DODO', '9697877797');
INSERT INTO customer (customer_id, gender, age, profession, "NAME", "NUMBER") VALUES
        (customer_seq.nextval, 'f', 19, 'seller', 'ErrA', '9692349963');
INSERT INTO customer (customer_id, gender, age, profession, "NAME", "NUMBER") VALUES
        (customer_seq.nextval, 'm', 34, 'teacher', 'MrC', '9696874536');
INSERT INTO customer (customer_id, gender, age, profession, "NAME", "NUMBER") VALUES
        (customer_seq.nextval, 'm', 41, 'farmer', 'TX', '9621545947');
INSERT INTO customer (customer_id, gender, age, profession, "NAME", "NUMBER") VALUES
        (customer_seq.nextval, 'f', 23, 'visagiste', 'Serena', '9249097879');
INSERT INTO customer (customer_id, gender, age, profession, "NAME", "NUMBER") VALUES
        (customer_seq.nextval, 'f', 21, 'nurse', 'Molly', '9352936535');
INSERT INTO customer (customer_id, gender, age, profession, "NAME", "NUMBER") VALUES
        (customer_seq.nextval, 'f', 16, 'student', 'Kira', '9244390199');
INSERT INTO customer (customer_id, gender, age, profession, "NAME", "NUMBER") VALUES
        (customer_seq.nextval, 'f', 19, 'student', 'Roxie', '9350718709');
INSERT INTO customer (customer_id, gender, age, profession, "NAME", "NUMBER") VALUES
        (customer_seq.nextval, 'm', 34, 'coder', 'Admin', '9245620810');

--- insert data into table position
INSERT INTO "POSITION" (position_id, duties, "NAME") VALUES (position_seq.nextval, 'store management', 'director');
	INSERT INTO "POSITION" (position_id, duties, "NAME") VALUES (position_seq.nextval, 'store management, purchase of goods', 'deputy director');
	INSERT INTO "POSITION" (position_id, duties, "NAME") VALUES (position_seq.nextval, 'keeping cash and documents', 'accountant');
	INSERT INTO "POSITION" (position_id, duties, "NAME") VALUES (position_seq.nextval, 'advertise', 'marketer');
	INSERT INTO "POSITION" (position_id, duties, "NAME") VALUES (position_seq.nextval, 'staff management', 'manager');
	INSERT INTO "POSITION" (position_id, duties, "NAME") VALUES (position_seq.nextval, 'sell', 'seller');
	INSERT INTO "POSITION" (position_id, duties, "NAME") VALUES (position_seq.nextval, 'clean up', 'cleaner');
    
--- insert into table employee
INSERT INTO employee (employee_id, age, experience, full_name, gender, position_id) VALUES
        (employee_seq.nextval, 63, 3, 'Nabrezhnaya Natalya Ilyevna',  'f', 7);
    INSERT INTO employee (employee_id, age, experience, full_name, gender, position_id) VALUES
        (employee_seq.nextval, 20, 1, 'Nosov Evgeny Ilyevich',  'm', 6);
    INSERT INTO employee (employee_id, age, experience, full_name, gender, position_id) VALUES
        (employee_seq.nextval, 23, 2, 'Zaitsev Ilya Davidovich',  'm', 6);
    INSERT INTO employee (employee_id, age, experience, full_name, gender, position_id) VALUES
        (employee_seq.nextval, 19, 0, 'Elizarova Yana Semenovna',  'f', 6);
    INSERT INTO employee (employee_id, age, experience, full_name, gender, position_id) VALUES
        (employee_seq.nextval, 21, 2, 'Roltich Oleg Potapovich',  'm', 6);
    INSERT INTO employee (employee_id, age, experience, full_name, gender, position_id) VALUES
        (employee_seq.nextval, 28, 3, 'Efimov Feoktist Rodionovich',  'm', 5);
    INSERT INTO employee (employee_id, age, experience, full_name, gender, position_id) VALUES
        (employee_seq.nextval, 31, 6, 'Siyanko Regina Sergeevna',  'm', 4);
    INSERT INTO employee (employee_id, age, experience, full_name, gender, position_id) VALUES
        (employee_seq.nextval, 35, 10, 'Kurushina Alina Sergeevna',  'f', 3);
    INSERT INTO employee (employee_id, age, experience, full_name, gender, position_id) VALUES
        (employee_seq.nextval, 30, 5, 'Uglichinin Vladimir Adrianovich',  'm', 2);
    INSERT INTO employee (employee_id, age, experience, full_name, gender, position_id) VALUES
        (employee_seq.nextval, 40, 10, 'Nabokov Gennady Vladimirovich',  'm', 1);

--- insert into table product
INSERT INTO product (product_id, price, producer) VALUES (product_seq.nextval, 120.50, 'ZVERI');
    INSERT INTO product (product_id, price, producer) VALUES (product_seq.nextval, 253.50, 'MOSBOOK');
    INSERT INTO product (product_id, price, producer) VALUES (product_seq.nextval, 25.00, 'POINTPEN');
    INSERT INTO product (product_id, price, producer) VALUES (product_seq.nextval, 50.00, 'PING');
    INSERT INTO product (product_id, price, producer) VALUES (product_seq.nextval, 99.90, 'MOSBOOK');
    INSERT INTO product (product_id, price, producer) VALUES (product_seq.nextval, 155.90, 'ZVERI');
    INSERT INTO product (product_id, price, producer) VALUES (product_seq.nextval, 345.50, 'ORACUL');
    INSERT INTO product (product_id, price, producer) VALUES (product_seq.nextval, 399.50, 'ORACUL');
    INSERT INTO product (product_id, price, producer) VALUES (product_seq.nextval, 455.50, 'PECHAT');
    INSERT INTO product (product_id, price, producer) VALUES (product_seq.nextval, 255.00, 'PECHAT');
    INSERT INTO product (product_id, price, producer) VALUES (product_seq.nextval, 420.50, 'MOSBOOK');
    INSERT INTO product (product_id, price, producer) VALUES (product_seq.nextval, 550.50, 'MOSBOOK');
    INSERT INTO product (product_id, price, producer) VALUES (product_seq.nextval, 1010.00, 'VOLGAPECHAT');
    INSERT INTO product (product_id, price, producer) VALUES (product_seq.nextval, 2340.50, 'VOLGAPECHAT');
    INSERT INTO product (product_id, price, producer) VALUES (product_seq.nextval, 1210.50, 'VOLGAPECHAT');

--- insert into table book_cover_type
INSERT INTO book_cover_type (cover_book_id, "NAME") VALUES (BOOK_COVER_TYPE_SEQ.nextval, 'soft');
INSERT INTO book_cover_type (cover_book_id, "NAME") VALUES (BOOK_COVER_TYPE_SEQ.nextval, 'hard');
    
--- insert into table book_form
INSERT INTO book_form (form_id, "NAME") VALUES (book_form_seq.nextval, 'small');
    INSERT INTO book_form (form_id, "NAME") VALUES (book_form_seq.nextval, 'medium') ;   
    INSERT INTO book_form (form_id, "NAME") VALUES (book_form_seq.nextval, 'medium-wide');  
    INSERT INTO book_form (form_id, "NAME") VALUES (book_form_seq.nextval, 'large');


--- insert into table genre
INSERT INTO genre (genre_id, "NAME") VALUES (genre_seq.nextval, 'fantasy');
    INSERT INTO genre (genre_id, "NAME") VALUES (genre_seq.nextval, 'horror');
    INSERT INTO genre (genre_id, "NAME") VALUES (genre_seq.nextval, 'novel');
    INSERT INTO genre (genre_id, "NAME") VALUES (genre_seq.nextval, 'dystopia');
    INSERT INTO genre (genre_id, "NAME") VALUES (genre_seq.nextval, 'detective');
    INSERT INTO genre (genre_id, "NAME") VALUES (genre_seq.nextval, 'documentary');
    INSERT INTO genre (genre_id, "NAME") VALUES (genre_seq.nextval, 'comedy');
    INSERT INTO genre (genre_id, "NAME") VALUES (genre_seq.nextval, 'thriller');
    INSERT INTO genre (genre_id, "NAME") VALUES (genre_seq.nextval, 'drama');
    INSERT INTO genre (genre_id, "NAME") VALUES (genre_seq.nextval, 'romance');

--- insert into table paper_type
INSERT INTO paper_type (paper_type_id, "NAME") VALUES (paper_type_seq.nextval, 'colourful');
    INSERT INTO paper_type (paper_type_id, "NAME") VALUES (paper_type_seq.nextval, 'monochrome');

--- insert into table book    
INSERT INTO book (product_id, book_form_id, paper_type_id, book_cover_type_id, genre_id, name, ISBN, date_of_publication) VALUES
    (2, 3, 2, 1, 1, 'Harry Potter and philosopher’s stone', '9781408845646', TO_DATE('01.09.1998','dd.mm.yyyy'));
INSERT INTO book (product_id, book_form_id, paper_type_id, book_cover_type_id, genre_id, name, ISBN, date_of_publication) VALUES
    (5, 2, 2, 2, 2, 'Carrie', '9785170824403', TO_DATE('30.08.2011','dd.mm.yyyy'));
INSERT INTO book (product_id, book_form_id, paper_type_id, book_cover_type_id, genre_id, name, ISBN, date_of_publication) VALUES
    (6, 2, 2, 2, 3, 'The Master and Margarita', '9783869710587', TO_DATE('19.03.1996','dd.mm.yyyy'));
INSERT INTO book (product_id, book_form_id, paper_type_id, book_cover_type_id, genre_id, name, ISBN, date_of_publication) VALUES
    (7, 1, 2, 1, 4, 'Fahrenheit 451', '9780345342966', TO_DATE('10.01.2012','dd.mm.yyyy'));
INSERT INTO book (product_id, book_form_id, paper_type_id, book_cover_type_id, genre_id, name, ISBN, date_of_publication) VALUES
    (8, 3, 1, 2, 5, 'The Complete Sherlock Holmese', '9781741730548', TO_DATE('01.10.1986','dd.mm.yyyy'));
INSERT INTO book (product_id, book_form_id, paper_type_id, book_cover_type_id, genre_id, name, ISBN, date_of_publication) VALUES
    (9, 4, 1, 1, 5, 'The Agatha Christie Collection', '9781456623975', TO_DATE('26.03.2021','dd.mm.yyyy'));
INSERT INTO book (product_id, book_form_id, paper_type_id, book_cover_type_id, genre_id, name, ISBN, date_of_publication) VALUES
    (10, 4, 1, 2, 1, 'The Hobbit, or There and Back Again', '9780048232731', TO_DATE('21.09.1937','dd.mm.yyyy'));
INSERT INTO book (product_id, book_form_id, paper_type_id, book_cover_type_id, genre_id, name, ISBN, date_of_publication) VALUES
    (14, 3, 2, 1, 2, 'Joyland', '9788960178335', TO_DATE('04.06.2013','dd.mm.yyyy'));
INSERT INTO book (product_id, book_form_id, paper_type_id, book_cover_type_id, genre_id, name, ISBN, date_of_publication) VALUES
    (15, 2, 2, 2, 2, 'Christine', '9780670220267', TO_DATE('31.05.2016','dd.mm.yyyy'));
    


--- insert into table stationery_type
INSERT INTO stationery_type (type_stat_id, name) VALUES (stationery_type_seq.nextval, 'A5');
INSERT INTO stationery_type (type_stat_id, name) VALUES (stationery_type_seq.nextval, 'A6');
INSERT INTO stationery_type (type_stat_id, name) VALUES (stationery_type_seq.nextval, 'blue');
INSERT INTO stationery_type (type_stat_id, name) VALUES (stationery_type_seq.nextval, 'black');
INSERT INTO stationery_type (type_stat_id, name) VALUES (stationery_type_seq.nextval, 'grey');
INSERT INTO stationery_type (type_stat_id, name) VALUES (stationery_type_seq.nextval, 'white');
INSERT INTO stationery_type (type_stat_id, name) VALUES (stationery_type_seq.nextval, 'small');
INSERT INTO stationery_type (type_stat_id, name) VALUES (stationery_type_seq.nextval, 'large');
INSERT INTO stationery_type (type_stat_id, name) VALUES (stationery_type_seq.nextval, 'squared');
INSERT INTO stationery_type (type_stat_id, name) VALUES (stationery_type_seq.nextval, 'pocket');

---  insert into table stationery
INSERT INTO stationery (product_id, name, stationery_type_id) VALUES (1, 'notebook', 1);
INSERT INTO stationery (product_id, name, stationery_type_id) VALUES (3, 'pen', 3);
INSERT INTO stationery (product_id, name, stationery_type_id) VALUES (4, 'eraser',9);

--- insert into table type_of_cover for cards
INSERT INTO type_of_cover (cover_card_id, name) VALUES (type_of_cover_seq.nextval, 'Rainbow');
INSERT INTO type_of_cover (cover_card_id, name) VALUES (type_of_cover_seq.nextval, 'New Year');
INSERT INTO type_of_cover (cover_card_id, name) VALUES (type_of_cover_seq.nextval, 'Christmas');
INSERT INTO type_of_cover (cover_card_id, name) VALUES (type_of_cover_seq.nextval, 'Birthday');
INSERT INTO type_of_cover (cover_card_id, name) VALUES (type_of_cover_seq.nextval, '8 of March');
INSERT INTO type_of_cover (cover_card_id, name) VALUES (type_of_cover_seq.nextval, 'Mother`s day');

--- insert into table gift_card
INSERT INTO gift_card (product_id, type_of_cover_id) VALUES (11, 2);
INSERT INTO gift_card (product_id, type_of_cover_id) VALUES (12, 3);
INSERT INTO gift_card (product_id, type_of_cover_id) VALUES (13, 4);

--- insert into table order
INSERT INTO "ORDER" (order_id, date_time, discount, employee_id, customer_id) VALUES
    (order_seq.nextval, TO_DATE('01.04.2020 13:27:18', 'DD.MM.YYYY HH24:MI:SS'), 20, 2, 1);
INSERT INTO "ORDER" (order_id, date_time, discount, employee_id, customer_id) VALUES
    (order_seq.nextval, TO_DATE('02.04.2020 13:27:18', 'DD.MM.YYYY HH24:MI:SS'), 0, 2, 2);
INSERT INTO "ORDER" (order_id, date_time, discount, employee_id, customer_id) VALUES
    (order_seq.nextval, TO_DATE('02.04.2020 13:27:18', 'DD.MM.YYYY HH24:MI:SS'), 10, 3, 2);
INSERT INTO "ORDER" (order_id, date_time, discount, employee_id, customer_id) VALUES
    (order_seq.nextval, TO_DATE('04.04.2020 13:27:18', 'DD.MM.YYYY HH24:MI:SS'), 5, 3, 3);
INSERT INTO "ORDER" (order_id, date_time, discount, employee_id, customer_id) VALUES
    (order_seq.nextval, TO_DATE('04.04.2020 13:27:18', 'DD.MM.YYYY HH24:MI:SS'), 0, 4, 3);
INSERT INTO "ORDER" (order_id, date_time, discount, employee_id, customer_id) VALUES
    (order_seq.nextval, TO_DATE('05.04.2020 13:27:18', 'DD.MM.YYYY HH24:MI:SS'), 0, 4, 5);
INSERT INTO "ORDER" (order_id, date_time, discount, employee_id, customer_id) VALUES
    (order_seq.nextval, TO_DATE('05.04.2020 13:27:18', 'DD.MM.YYYY HH24:MI:SS'), 0, 4, 5);
INSERT INTO "ORDER" (order_id, date_time, discount, employee_id, customer_id) VALUES
    (order_seq.nextval, TO_DATE('06.04.2020 13:27:18', 'DD.MM.YYYY HH24:MI:SS'), 10, 5, 9);
INSERT INTO "ORDER" (order_id, date_time, discount, employee_id, customer_id) VALUES
    (order_seq.nextval, TO_DATE('06.04.2020 13:27:18', 'DD.MM.YYYY HH24:MI:SS'), 0, 5, 10);
INSERT INTO "ORDER" (order_id, date_time, discount, employee_id, customer_id) VALUES
    (order_seq.nextval, TO_DATE('06.04.2020 13:27:18', 'DD.MM.YYYY HH24:MI:SS'), 15, 5, 6);
    
SELECT to_char(date_time,'DD.MM.YYYY HH24:MI:SS') date_time FROM "ORDER"; 

--- insert into table many to many author to book
INSERT INTO kmtm_author_book (book_id, author_id) VALUES (2, 2);
INSERT INTO kmtm_author_book (book_id, author_id) VALUES (5, 1);
INSERT INTO kmtm_author_book (book_id, author_id) VALUES (6, 10);
INSERT INTO kmtm_author_book (book_id, author_id) VALUES (7, 3);
INSERT INTO kmtm_author_book (book_id, author_id) VALUES (8, 4);
INSERT INTO kmtm_author_book (book_id, author_id) VALUES (9, 7);
INSERT INTO kmtm_author_book (book_id, author_id) VALUES (10, 6);
INSERT INTO kmtm_author_book (book_id, author_id) VALUES (14, 1);
INSERT INTO kmtm_author_book (book_id, author_id) VALUES (15, 1);

--- insert into table many to many product to order
INSERT INTO kmtm_product_order (product_id, order_id, quantity) VALUES (1, 1, 1);
INSERT INTO kmtm_product_order (product_id, order_id, quantity) VALUES (3, 2, 2);
INSERT INTO kmtm_product_order (product_id, order_id, quantity) VALUES (3, 3, 1);
INSERT INTO kmtm_product_order (product_id, order_id, quantity) VALUES (5, 4, 4);
INSERT INTO kmtm_product_order (product_id, order_id, quantity) VALUES (5, 5, 1);
INSERT INTO kmtm_product_order (product_id, order_id, quantity) VALUES (7, 6, 2);
INSERT INTO kmtm_product_order (product_id, order_id, quantity) VALUES (8, 7, 2);
INSERT INTO kmtm_product_order (product_id, order_id, quantity) VALUES (10, 8, 1);
INSERT INTO kmtm_product_order (product_id, order_id, quantity) VALUES (11, 9, 2);
INSERT INTO kmtm_product_order (product_id, order_id, quantity) VALUES (15, 10, 1);