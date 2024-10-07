-- 1st query : Join the necessary tables to find the total quantity of each pizza category ordered.

SELECT 
    pizza_types.category AS category,
    SUM(orders_details.quantity) AS quantity
FROM
    pizza.pizza_types
        JOIN
    pizza.pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    pizza.orders_details ON pizzas.pizza_id = orders_details.pizza_id
GROUP BY category
ORDER BY quantity DESC;



-- 2nd query : Determine the distribution of orders by hour of the day.

SELECT 
    HOUR(order_time) AS hours, COUNT(orders.order_id) AS orders
FROM
    orders
GROUP BY hours;



-- 3rd query : Join relevant tables to find the category-wise distribution of pizzas.

SELECT 
    category, COUNT(name) AS count
FROM
    pizza_types
GROUP BY category;



-- 4th query :  Group the orders by date and calculate the average number of pizzas ordered per day.

SELECT 
    ROUND(AVG(quantity), 0) as avg_orders_per_day
FROM
    (SELECT 
        orders.order_date AS date,
            SUM(orders_details.quantity) AS quantity
    FROM
        orders
    JOIN orders_details ON orders.order_id = orders_details.order_id
    GROUP BY date) order_qunatity;



-- 5th query : Determine the top 3 most ordered pizza types based on revenue.

SELECT 
    pizza_types.name AS pizza_name,
    SUM(orders_details.quantity * pizzas.price) AS revenue
FROM
    pizzas
        JOIN
    pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id
        JOIN
    orders_details ON pizzas.pizza_id = orders_details.pizza_id
GROUP BY pizza_name
ORDER BY revenue DESC
LIMIT 3;



