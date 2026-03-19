CREATE TABLE cleaned_retail AS
SELECT *
FROM raw_retail
WHERE customer_id IS NOT NULL
  AND customer_id <> ''
  AND quantity > 0
  AND unit_price > 0
  AND description IS NOT NULL
  AND description <> ''
  AND invoice_no NOT LIKE 'C%';