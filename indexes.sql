Из запроса и плана выполнения можно сделать вывод, что в данном случае необходимо создать индекс на 
столбце "product_id" таблицы "order_product". Это связано с тем, что при выполнении запроса 
происходит фильтрация по этому столбцу, и его отсутствие может приводить к долгому времени 
выполнения запроса.


CREATE INDEX idx_order_product_product_id ON order_product (product_id);


// Некластерный индекс на таблице product для ускорения выборки по id
CREATE INDEX idx_product_id ON product (id);

// Композитный индекс на столбцах order_id и product_id в таблице order_product
CREATE INDEX idx_order_product_order_id_product_id ON order_product (order_id, product_id);

// Индекс создает индекс на столбце price в таблице product
CREATE INDEX idx_product_price ON product (price)

// Эти индексы позволят БД быстро 
находить нужные данные при выполнении JOIN и WHERE, соответственно, и ускорят выполнение запроса.