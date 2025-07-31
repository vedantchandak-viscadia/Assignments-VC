CREATE TABLE customers (
    customer_id      VARCHAR PRIMARY KEY,
    customer_name    VARCHAR(200) NOT NULL,
    type             VARCHAR(200),       
    city             VARCHAR(200),
    region           VARCHAR(200),       
    sales_rep        VARCHAR(200)
);
CREATE INDEX idx_customers_region ON customers(region);

CREATE TABLE products (
    product_id      VARCHAR(200) PRIMARY KEY,
    product_name    VARCHAR(200) NOT NULL,
    category        VARCHAR(200),       
    price           NUMERIC(10, 2)      
);

CREATE TABLE inventory (
    inventory_id         VARCHAR(200) PRIMARY KEY,
    warehouse_id         VARCHAR(200),
    product_id           VARCHAR(200) REFERENCES products(product_id),
    stock_level          INTEGER,               
    reorder_level        INTEGER,
    avg_daily_sales      INTEGER,
    days_until_reorder   NUMERIC(4, 1)
);
CREATE INDEX idx_inventory_product ON inventory(product_id);

CREATE TABLE sales (
    sale_id             VARCHAR(200) PRIMARY KEY,
    sale_date           DATE NOT NULL,
    product_id          VARCHAR(200) REFERENCES products(product_id),
    customer_id         VARCHAR(200) REFERENCES customers(customer_id),
    quantity            INTEGER,
    product_price       NUMERIC(10, 2),
    total_sale_amount   NUMERIC(12, 2)
);
CREATE INDEX idx_sales_date ON sales(sale_date);

CREATE INDEX idx_sales_product ON sales(product_id);

CREATE INDEX idx_sales_customer ON sales(customer_id);
