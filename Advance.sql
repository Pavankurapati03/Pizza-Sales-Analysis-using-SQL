-- 1st query : Calculate the percentage contribution of each pizza type to total revenue.

SELECT 
    pizza_types.category,
    ROUND(SUM(orders_details.quantity * pizzas.price) / (SELECT 
                    ROUND(SUM(orders_details.quantity * pizzas.price),
                                2) AS total_sales
                FROM
                    orders_details
                        JOIN
                    pizzas ON pizzas.pizza_id = orders_details.pizza_id) * 100,
            2) AS revenue
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    orders_details ON orders_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.category
ORDER BY revenue DESC;



-- 2nd query : Analyze the cumulative revenue generated over time.

select date, sum(revenue) over (order by date) as cum_revenue from
(SELECT 
    orders.order_date AS date,
    SUM(orders_details.quantity * pizzas.price) AS revenue
FROM
    orders_details
        JOIN
    pizzas ON orders_details.pizza_id = pizzas.pizza_id
        JOIN
    orders ON orders_details.order_id = orders.order_id
GROUP BY date) as sales;




-- 3rd query : Determine the top 3 most ordered pizza types based on revenue for each pizza category.

select name, revenue from 
(select category, name, revenue, 
rank() over(partition by category order by revenue desc) as rn from
(select pizza_types.category as category, pizza_types.name as name, sum(orders_details.quantity * pizzas.price) as revenue 
from pizza_types join pizzas on pizza_types.pizza_type_id = pizzas.pizza_type_id 
join orders_details on orders_details.pizza_id = pizzas.pizza_id 
group by category, name) as a) as b;