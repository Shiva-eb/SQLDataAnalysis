Select 
	count(distinct website_sessions.website_session_id) as sessions,
	count(distinct orders.order_id) as orders,
    count(distinct orders.order_id)/count(distinct website_sessions.website_session_id) as session_to_order_conv_rt
FROM website_sessions

Left join orders
	on website_sessions.website_session_id=orders.website_session_id
    
WHERE website_sessions.created_at<'2012-04-14'
	AND website_sessions.utm_source='gsearch'
    AND website_sessions.utm_campaign='nonbrand';

