Select 
MIN(Date(created_at))  as Week_start_date,
COUNT(distinct website_session_id)
From website_sessions
where created_at<'2012-05-10' and utm_source='gsearch' and utm_campaign='nonbrand'
group by Year(created_at), week(created_at);