SELECT * FROM parts
LIMIT 10;

ALTER TABLE parts
ALTER COLUMN code SET NOT NULL;

ALTER TABLE parts
ADD UNIQUE(code);

UPDATE parts
SET description = 'N/A'
WHERE description IS NULL;

ALTER TABLE parts
ALTER COLUMN description SET NOT NULL;

INSERT INTO parts (id, description, code, manufacturer_id) VALUES (
  54,
  'pepe',
  'V1-009',
  9
);

ALTER TABLE reorder_options
ALTER COLUMN price_usd SET NOT NULL;

ALTER TABLE reorder_options
ALTER COLUMN quantity SET NOT NULL;

ALTER TABLE reorder_options
ADD CHECK(price_usd > 0 AND quantity > 0);

ALTER TABLE reorder_options
ADD CHECK((price_usd/quantity) BETWEEN 0 AND 25);

ALTER TABLE parts
ADD PRIMARY KEY(id);

ALTER TABLE reorder_options
ADD FOREIGN KEY(part_id) REFERENCES parts(id);

ALTER TABLE locations
ADD CHECK(qty > 0);

ALTER TABLE locations
ADD UNIQUE(part_id, location);

ALTER TABLE locations
ADD FOREIGN KEY(part_id) REFERENCES parts(id);

ALTER TABLE parts
ADD FOREIGN KEY(manufacturer_id) REFERENCES manufacturers(id);

SELECT * FROM parts;

INSERT INTO manufacturers (id, name) VALUES (
  11,
  'Pip-NNC Industrial'
);

UPDATE parts
SET manufacturer_id = 11
WHERE manufacturer_id = 1 OR manufacturer_id = 2;
