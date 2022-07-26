USE shop

CREATE TABLE IF NOT EXISTS Category (
  category_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(45) NOT NULL,
  description VARCHAR(45) NOT NULL);

CREATE TABLE IF NOT EXISTS Image (
  image_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  data VARCHAR(45) NOT NULL);

CREATE TABLE IF NOT EXISTS Product (
  product_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(45) NOT NULL,
  price DECIMAL NOT NULL,
  price_sale DECIMAL NOT NULL,
  price_promocode DECIMAL NOT NULL,
  description VARCHAR(45) NOT NULL,
  is_active BOOLEAN NOT NULL);

CREATE TABLE IF NOT EXISTS Product_Category (
  product_category_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  product_id INT NOT NULL,
  category_id INT NOT NULL,
  is_main BOOLEAN NOT NULL,
  FOREIGN KEY (category_id) REFERENCES Category(category_id),
  FOREIGN KEY (product_id) REFERENCES Product(product_id));


CREATE TABLE IF NOT EXISTS Product_Image (
  product_image_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  product_id INT NOT NULL,
  image_id INT NOT NULL,
  is_main BOOLEAN NOT NULL,
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
    (data)
    values ('https://volny.ru/wa-data/public/shop/products/72/30/3072/images/867/867.970.jpg'),
    ('https://static.street-beat.ru/upload/resize_cache/iblock/8f4/500_500_1/8f4349b4206892170ac83dd63b38da1a.jpg'),
    ('https://bobostore.ru/upload/iblock/c75/168-1.jpg'),
    ('https://img.joomcdn.net/e74498624e635d57c815d431e04a9b5738325596_original.jpeg'),
    ('https://cdn3.gulliver-wear.com/219GSGC6301/0/1.jpg'),
    ('https://images.wbstatic.net/c516x688/new/19880000/19885380-1.jpg'),
    ('https://mayki.moscow/wp-content/uploads/2017/10/1-26-500x500.jpg'),
    ('https://a.lmcdn.ru/img600x866/M/P/MP002XM1ZSPO_12793147_1_v1.jpg'),
    ('https://shoptoyou.su/image/cache/data/odnotonnye_futbolki/futbolka_oranzhevaya_odnotonnaya_bez_risunka_detskaya-900x900.jpg'),
    ('https://www.keng.ru/upload/iblock/893/d6s3k0ze7idmoo0qnmjj5c4k155f4ead.jpg'),
    ('https://st.kashalot.com/img/club/2018/08/12/1-c1ac3991-club.jpg'),
    ('https://royal-wool.ru/wp-content/uploads/2020/10/kardigan-na-poyase-puh-yaka-1921-50m-3.jpg'),
    ('https://st.tsum.com/btrx/i/11/73/56/31/01_434.jpg'),
    ('https://static.street-beat.ru/upload/resize_cache/iblock/8f4/500_500_1/8f4349b4206892170ac83dd63b38da1a.jpg'),
    ('https://avatars.mds.yandex.net/get-mpic/5236885/img_id6523262219749497848.jpeg/orig')
  );

Insert into Product (
    (title, price, price_sale, price_promocode, description, is_active)
    values ('Рубашка гавайская', 1000, 800, 600, 'Рубашка из хлопка с изображением пальм', true),
    ('Джинсы Gloria Jeans', 1200, 1000, 800, 'Классические джинсы', true),
    ('Брюки CUBE', 1100, 1000, 900, 'Брюки серые', true),
    ('Майка Tezenis', 2000, 1800, 1600, 'Майка из 100% хлопка', true),
    ('Футболка Lacoste', 6000, 5500, 5000, 'Футболка для занятий теннисом', true),
    ('Трусы боксеры Tezenis', 1000, 500, 300, 'Трусы 1 штука', true),
    ('Шорты Galion', 1500, 1200, 800, 'Шорты с принтом', true),
    ('Свитшот GAP', 3000, 2800, 2600, 'Свитшот с рваными рукавами', true),
    ('Худи Adidas', 2000, 1800, 1700, 'Худи с капюшоном', true),
    ('Свитер Baon', 3500, 2800, 2600, 'Свитер без рукавов', true),
    ('Пиджак Kanzler', 4000, 3500, 3200, 'Пиджак с декоративной розой', true),
    ('Кардиган Mango', 7800, 6800, 6600, 'Кардиган повседневный', true),
    ('Пиджак Massimo Dutti', 7000, 5800, 5600, 'Пиджак с коротким рукавом', true),
    ('Рубашка Cotton', 1300, 1200, 900, 'Рубашка приталенная', false)
  );

Insert into Product_Category (
  (product_id, category_id, is_main)  
  values (1, 1, true),
  (2, 2, true),
  (3, 3, true),
  (4, 4, true),
  (5, 5, true),
  (6, 6, true),
  (7, 9, true),
  (8, 8, true),
  (9, 7, true),
  (10, 11, true),
  (11, 10, true),
  (12, 12, true),
  (13, 10, true),
  (14, 1, true),
  (8, 7, false)
);

Insert into Product_Image (
  (product_id, image_id, is_main)
  values (1, 1, true),
  (1, 13, true),
  (1, 15, false),
  (2, 2, true),
  (2, 14, true),
  (3, 5, true),
  (4, 7, true),
  (5, 9, true),
  (6, 8, true),
  (7, 6, true),
  (8, 3, true),
  (9, 10, true),
  (10, 4, true),
  (11, 12, true),
  (12, 11, true)
);