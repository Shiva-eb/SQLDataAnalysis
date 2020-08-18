USE mavenfuzzyfactory;
SELECT website_sessions.utm_content,
	COUNT(distinct website_sessions.website_session_id) as sessions,
    COUNT(distinct orders.order_id) as orders
FROM website_sessions
   Left Join orders
		ON orders.website_session_id=website_sessions.website_session_id
WHERE website_sessions.website_session_id between 1000 AND 2000
group by 1
Order by 2 desc;