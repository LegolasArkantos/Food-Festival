create or replace PACKAGE manage_orders
AS
  --------------------------------------------------------------
  -- create procedure for add a product temporarily
  PROCEDURE add_product (
    p_product  IN NUMBER,
    p_quantity IN NUMBER);
  --------------------------------------------------------------
  -- create procedure for remove a product temporarily
  PROCEDURE remove_product (
    p_product IN NUMBER);
  --------------------------------------------------------------
  -- create function to get the number of items in the shopping cart
  FUNCTION Get_quantity
  RETURN NUMBER;
  --------------------------------------------------------------
  -- create procedure for validate if a product exists in the shopping cart
  FUNCTION Product_exists(
    p_product IN NUMBER)
  RETURN NUMBER;
  --------------------------------------------------------------
  -- create procedure for clear the cart
  PROCEDURE clear_cart;
  --------------------------------------------------------------
  -- create function to validate a customer
  FUNCTION Customer_exists(
    p_customer_email IN VARCHAR2)
  RETURN NUMBER;
  --------------------------------------------------------------
  -- create procedure to insert orders
  PROCEDURE create_order (
    p_customer       IN VARCHAR2 DEFAULT NULL,
    p_customer_email IN VARCHAR2,
    p_store          IN NUMBER,
    p_order_id       OUT orders.order_id%TYPE,
    p_customer_id    OUT NUMBER );
END manage_orders;
/