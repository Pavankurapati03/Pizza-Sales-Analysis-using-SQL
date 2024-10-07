-- 1st query : Retrieve the total number of orders placed.

SELECT count(order_id) as total_orders FROM pizza.orders;



-- 2nd query : Calculate the total revenue generated from pizza sales.

SELECT 
    ROUND(SUM(orders_details.quantity * pizzas.price),
            2) AS total_revenue
FROM
    pizza.orders_details
        JOIN
    pizza.pizzas ON pizzas.pizza_id = orders_details.pizza_id;



-- 3rd query : Identify the highest-priced pizza.

SELECT 
    pizza_types.name, pizzas.price
FROM
    pizza.pizzas
        JOIN
    pizza.pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id
ORDER BY pizzas.price DESC
LIMIT 1;



-- 4th query : Identify the most common pizza size ordered.

SELECT 
    pizzas.size,
    COUNT(orders_details.order_details_id) AS order_count
FROM
    pizza.pizzas
        JOIN
    pizza.orders_details ON pizzas.pizza_id = orders_details.pizza_id
GROUP BY pizzas.size
ORDER BY order_count DESC;



-- 5th query : List the top 5 most ordered pizza types along with their quantities.

SELECT 
    pizza_types.name, SUM(orders_details.quantity) AS quantity
FROM
    pizza.pizza_types
        JOIN
    pizza.pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id 
        JOIN
    orders_details ON orders_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.name
ORDER BY quantity DESC
LIMIT 5;




