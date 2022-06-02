ALTER TABLE orders ADD CONSTRAINT "orders_product_id_fkey" FOREIGN KEY (product_id) REFERENCES products (id);

INSERT INTO products(name)
     VALUES ('small bolt'),
	          ('large bolt');

INSERT INTO orders (product_id, quantity)
      VALUES (1, 10),
	     (1, 25),
	     (2, 15);

SELECT orders.quantity, products.name
  FROM orders
  JOIN products
	ON orders.product_id = products.id;

INSERT INTO orders(product_id, quantity)
  VALUES (NULL, 10);

-- if we try to set the product_id column to NOT NULL it will throw an error since there is a NULL value entered in the product_id field from the previous statement 

DELETE FROM orders WHERE id = 4;

ALTER TABLE orders ALTER COLUMN product_id SET NOT NULL;

CREATE TABLE reviews (
	id serial PRIMARY KEY,
  product_id integer REFERENCES products(id), 
	review text NOT NULL
);

ALTER TABLE reviews ADD COLUMN order_id integer REFERENCES orders(id);
