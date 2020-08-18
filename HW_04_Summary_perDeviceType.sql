Select 
website_sessions.device_type,
count(distinct website_sessions.website_session_id) as sessions,
count(distinct orders.order_id) as orders,
count(distinct orders.order_id)/count(distinct website_sessions.website_session_id) as session_to_order_conv_rate
FROM website_sessions
Left Join Orders
ON orders.website_session_id=website_sessions.website_session_id
WHERE website_sessions.created_at<'2012-05-11' and utm_source='gsearch' and utm_campaign='nonbrand'
group by website_sessions.device_type