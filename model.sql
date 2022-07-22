USE shop

CREATE TABLE IF NOT EXISTS Category (
  category_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(45) NOT NULL,
  description VARCHAR(45) NOT NULL);

CREATE TABLE IF NOT EXISTS Image (
  image_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  data BLOB NOT NULL,
  primary bit NOT NULL);

CREATE TABLE IF NOT EXISTS Product (
  product_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(45) NOT NULL,
  price_old DECIMAL NOT NULL,
  price_actual DECIMAL NOT NULL,
  price_discount DECIMAL NOT NULL,
  description VARCHAR(45) NOT NULL);

CREATE TABLE IF NOT EXISTS Product_Category (
  product_category_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  product_id INT NOT NULL,
  category_id INT NOT NULL,
  FOREIGN KEY (category_id) REFERENCES Category(category_id),
  FOREIGN KEY (product_id) REFERENCES Product(product_id));


CREATE TABLE IF NOT EXISTS Product_Image (
  product_image_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  product_id INT NOT NULL,
  image_id INT NOT NULL,
  FOREIGN KEY (product_id) REFERENCES Product(product_id),
  FOREIGN KEY (image_id) REFERENCES Image(image_id));

Insert into Category (
    (title, description)
    values ('Рубашки', 'Рубашки из хлопка'), 
    ('Джинсы', 'Джинсы прямые'),
    ('Брюки', 'Брюки зауженные'), 
    ('Майки', 'Майки с рисунком'), 
    ('Футболки', 'Футболки без рисунка'), 
    ('Нижнее белье', 'Нижнее белье для мужчин'), 
    ('Худи', 'Худи повседневные'), 
    ('Свитшоты', 'Свитшоты с рисунком'), 
    ('Шорты', 'Шорты домашние'), 
    ('Пиджаки', 'Пиджаки премиум'), 
    ('Свитеры', 'Свитеры из натуральных материалов'), 
    ('Кардиганы', 'Кардиганы женские')
  );

Insert into Image (
    (data, primary)
    values (LOAD_FILE('\img\image.png'), 1),
    (LOAD_FILE('\img\image.png'), 1),
    (LOAD_FILE('\img\image.png'), 1),
    (LOAD_FILE('\img\image.png'), 1),
    (LOAD_FILE('\img\image.png'), 1),
    (LOAD_FILE('\img\image.png'), 1),
    (LOAD_FILE('\img\image.png'), 1),
    (LOAD_FILE('\img\image.png'), 1),
    (LOAD_FILE('\img\image.png'), 1),
    (LOAD_FILE('\img\image.png'), 1),
    (LOAD_FILE('\img\image.png'), 1),
    (LOAD_FILE('\img\image.png'), 1),
    (LOAD_FILE('\img\image.png'), 0),
    (LOAD_FILE('\img\image.png'), 0)
  );

Insert into Product (
    (title, price_old, price_actual, price_discount, description)
    values ('Рубашка гавайская', 1000, 800, 600, 'Рубашка из хлопка с изображением пальм'),
    ('Джинсы Gloria Jeans', 1200, 1000, 800, 'Классические джинсы'),
    ('Брюки CUBE', 1100, 1000, 900, 'Брюки серые'),
    ('Майка Tezenis', 2000, 1800, 1600, 'Майка из 100% хлопка'),
    ('Футболка Lacoste', 6000, 5500, 5000, 'Футболка для занятий теннисом'),
    ('Трусы боксеры Tezenis', 1000, 500, 300, 'Трусы 1 штука'),
    ('Шорты Galion', 1500, 1200, 800, 'Шорты с принтом'),
    ('Свитшот GAP', 3000, 2800, 2600, 'Свитшот с рваными рукавами'),
    ('Худи Adidas', 2000, 1800, 1700, 'Худи с капюшоном'),
    ('Свитер Baon', 3500, 2800, 2600, 'Свитер без рукавов'),
    ('Пиджак Kanzler', 4000, 3500, 3200, 'Пиджак с декоративной розой'),
    ('Кардиган Mango', 7800, 6800, 6600, 'Кардиган повседневный'),
    ('Пиджак Massimo Dutti', 7000, 5800, 5600, 'Пиджак с коротким рукавом'),
    ('Рубашка Cotton', 1300, 1200, 900, 'Рубашка приталенная')
  );

Insert into Product_Category (
  (product_id, category_id)  
  values (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5),
  (6, 6),
  (7, 9),
  (8, 8),
  (9, 7),
  (10, 11),
  (11, 10),
  (12, 12),
  (13, 10),
  (14, 1)
);

Insert into Product_Image (
  (product_id, image_id)
  values (1, 1),
  (1, 13),
  (2, 2),
  (2, 14),
  (3, 5),
  (4, 7),
  (5, 9),
  (6, 8),
  (7, 6),
  (8, 3),
  (9, 10),
  (10, 4),
  (11, 12),
  (12, 11)
);