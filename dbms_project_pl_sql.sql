 --set variable declaration and print value
 DECLARE
  var_product_name VARCHAR2(100);
  var_supplier_name VARCHAR2(50);
BEGIN
  var_product_name := 'Refrigerator';
  SELECT s.supplier_name
  INTO var_supplier_name
  FROM Products p
  JOIN Suppliers s ON p.supplier_id = s.supplier_id
  WHERE p.product_name = var_product_name;
  
  DBMS_OUTPUT.PUT_LINE('Supplier Name: ' || var_supplier_name);
END;
/

--insert and set default values
DECLARE
  v_column1 datatype := DEFAULT; 
  v_column2 datatype := DEFAULT; 
  v_column3 datatype := DEFAULT; 
BEGIN
  INSERT INTO my_table (column1, column2, column3)
  VALUES (v_column1, v_column2, v_column3);

  COMMIT;
  
  DBMS_OUTPUT.PUT_LINE('Row inserted successfully.');
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
    ROLLBACK;
END;
/

--curson and rowcount
DECLARE
  CURSOR c_product IS
    SELECT product_name, price
    FROM Products;
  v_product_name Products.product_name%TYPE;
  v_price Products.price%TYPE;
  v_row_count NUMBER := 0;
BEGIN
  OPEN c_product;

  LOOP
    FETCH c_product INTO v_product_name, v_price;
    EXIT WHEN c_product%NOTFOUND;
    v_row_count := v_row_count + 1;
    DBMS_OUTPUT.PUT_LINE('Product: ' || v_product_name || ', Price: ' || v_price);
  END LOOP;
  
  CLOSE c_product;

  DBMS_OUTPUT.PUT_LINE('Total rows fetched: ' || v_row_count);
END;
/

--if else statement
DECLARE
  v_product_name Products.product_name%TYPE := 'Laptop';
  v_supplier_name Suppliers.supplier_name%TYPE;
  v_product_count INTEGER := 0;
BEGIN
  SELECT COUNT(*) INTO v_product_count
  FROM Products
  WHERE product_name = v_product_name;

  IF v_product_name IS NULL THEN
    DBMS_OUTPUT.PUT_LINE('Product name is not provided.');
  ELSIF v_product_count > 0 THEN
    SELECT s.supplier_name INTO v_supplier_name
    FROM Suppliers s
    JOIN Products p ON s.supplier_id = p.supplier_id
    WHERE p.product_name = v_product_name;

    DBMS_OUTPUT.PUT_LINE('Supplier name for product ' || v_product_name || ' is ' || v_supplier_name);
  ELSE
    DBMS_OUTPUT.PUT_LINE('Product name ' || v_product_name || ' does not exist.');
  END IF;
END;
/


--procedure
CREATE OR REPLACE PROCEDURE GetSupplierByProductName(
  p_product_name IN Products.product_name%TYPE,
  p_supplier_name OUT Suppliers.supplier_name%TYPE
) AS
BEGIN
  SELECT s.supplier_name INTO p_supplier_name
  FROM Suppliers s
  JOIN Products p ON s.supplier_id = p.supplier_id
  WHERE p.product_name = p_product_name;
END;
/

--function
CREATE OR REPLACE FUNCTION GetSupplierByProductName(
  p_product_name IN Products.product_name%TYPE
) RETURN Suppliers.supplier_name%TYPE AS
  v_supplier_name Suppliers.supplier_name%TYPE;
BEGIN
  SELECT s.supplier_name INTO v_supplier_name
  FROM Suppliers s
  JOIN Products p ON s.supplier_id = p.supplier_id
  WHERE p.product_name = p_product_name;

  RETURN v_supplier_name;
END;
/

--array with loop
DECLARE
  TYPE product_names_t IS TABLE OF Products.product_name%TYPE INDEX BY PLS_INTEGER;
  v_product_names product_names_t;
BEGIN
  SELECT product_name BULK COLLECT INTO v_product_names FROM Products;
  FOR i IN 1..v_product_names.COUNT LOOP
    DBMS_OUTPUT.PUT_LINE('Product Name: ' || v_product_names(i));
  END LOOP;
END;
/
