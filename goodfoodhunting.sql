CREATE DATABASE  goodfoodhunting;


CREATE TABLE dishes(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(100),
  image_url VARCHAR(400)
);

INSERT INTO dishes (name, image_url) VALUES ('birthday cake ', 'https://imageresizer.static9.net.au/IRl3QJH3U3CPlnXxouVZd8mgjMM=/1400x0/smart/http%3A%2F%2Fprod.static9.net.au%2F_%2Fmedia%2F2017%2F10%2F06%2F11%2F41%2FPinata-surprise-birthday-cake.jpg');

INSERT INTO dishes (name, image_url) VALUES ('cookies', 'https://images-gmi-pmc.edge-generalmills.com/b9272720-c6bf-4288-92f7-43542067af7c.jpg');

INSERT INTO dishes (name, image_url) VALUES ('chewy buns', 'https://4.bp.blogspot.com/-EJpEfkwS58c/WVsvQ1NYCeI/AAAAAAAAORU/LAcPeFi-THEQE9V_Jce1sb-RV1chDRIrgCLcBGAs/s1600/Italian_Rolls_.jpg');


CREATE TABLE comments (
  id SERIAL4 PRIMARY KEY,
  content TEXT NOT NULL,
  dish_id INTEGER NOT NULL,
  FOREIGN KEY (dish_id) REFERENCES dishes (id) ON DELETE RESTRICT
);


CREATE TABLE users (
  id SERIAL4 PRIMARY KEY,
  email VARCHAR(300),
  password_digest VARCHAR(400)
);

ALTER TABLE dishes ADD COLUMN user_id INTEGER;


CREATE TABLE likes (
  id SERIAL4 PRIMARY KEY,
  user_id INTEGER,
  dish_id INTEGER
);

ALTER TABLE comments ADD COLUMN user_id INTEGER;

UPDATE comments SET user_id = 1;