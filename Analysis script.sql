/*showing item name with order details*/
SELECT  od.order_id ,
        od.order_date ,
        od.order_time ,
        mi.item_name 
FROM order_details od LEFT JOIN menu_items mi ON od.item_id = mi.menu_item_id   

/*Task-1count of menu items */
SELECT COUNT(DISTINCT mi.item_name ) AS name
FROM menu_items mi 

/*task 2 -expensive and cheapest item*/
SELECT mi.item_name ,
       mi.price 
FROM menu_items mi
ORDER BY mi.price DESC 

/*task 3 find out no.of Italian dishes and the least and morst expensive Italian dish*/
SELECT count(mi.category ) AS nmbr
FROM menu_items mi 
WHERE mi.category = 'Italian' 

SELECT mi.item_name ,
       mi.price 
FROM menu_items mi
WHERE mi.category = 'Italian'
ORDER BY mi.price DESC 

/*task 4 - no.of dishes in each category and average dish price within each category*/
SELECT mi.category , 
       count(*) AS Number_of_dishes,
       avg(mi.price ) AS Avg_price
FROM menu_items mi 
GROUP BY mi.category ;

/*objective 2 task 1 - find out the date range */
SELECT min(od.order_date ) AS start_date,
       max(od.order_date ) AS END_date
FROM order_details od 

/*task 2 - total no. of orders placed and total items ordered*/
SELECT count(*) AS Numbwe_of_orders,
       count(DISTINCT od.item_id ) 
FROM order_details od 

/*task 3 - orders with the most no. of items*/
SELECT t.order_id ,
       t.total_items 
FROM  (SELECT  order_id,
       COUNT(*) AS total_items
       FROM order_details
       GROUP BY order_id)t
WHERE t.total_items = (SELECT max(x.items)
                      FROM (SELECT count(*)AS items 
                            FROM order_details o
                            GROUP BY o.order_id)x);
                            
/*task 4 - orders with more than 12 items*/
SELECT count(*)AS orders
FROM (SELECT t.order_id ,
        t.total_items 
        FROM  (SELECT od.order_id ,
               count(*) AS total_items
               FROM order_details od
               GROUP BY od.order_id
               )t
        WHERE t.total_items > 12
        )x
                            
                            
/*objective 3 task 1- combining both the tables */                          
SELECT  *
FROM order_details od LEFT JOIN menu_items mi ON od.item_id = mi.menu_item_id 

/*task 2 - least and most ordered items and their respective categories*/
SELECT t.item_name ,
       t.category ,
       t.total ,
       t.price 
FROM   (
        SELECT mi.item_name ,
        mi.category ,
        count(*) AS total,
        mi.price 
        FROM order_details od LEFT JOIN menu_items mi ON od.item_id = mi.menu_item_id 
        GROUP BY mi.item_name , mi.category , mi.price 
        ORDER BY total DESC
        )t
WHERE total = (SELECT min(x.total1 ) 
              FROM (SELECT count(*) total1
               FROM order_details od LEFT JOIN menu_items mi ON od.item_id = mi.menu_item_id
               GROUP BY mi.item_name ,mi.category )x) 
               OR total=
               (SELECT max(z.total_2)
               from(SELECT count(*) AS total_2
               FROM order_details od LEFT JOIN menu_items mi ON od.item_id =mi.menu_item_id 
               GROUP BY mi.item_name , mi.category )z)
                             
               
 /*task 3 - top 5 orderes that spent the most money */ 
 SELECT  od.order_id ,
         sum(mi.price ) AS Money_spent
 FROM order_details od LEFT JOIN menu_items mi ON od.item_id =mi.menu_item_id 
 GROUP BY od.order_id 
 ORDER BY money_spent DESC 
 LIMIT 5 ;
 
 
 /*task 4 - details of the highest spend order */ 
 SELECT od.order_id ,
        od.order_date ,
        mi.item_name 
 FROM order_details od LEFT JOIN menu_items mi ON od.item_id = mi.menu_item_id 
 WHERE od.order_id = 440
               
               
               
               
               
               
               
               
               
               
               
               
               
               
               
               
               
               
               
               
               
             
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            















































