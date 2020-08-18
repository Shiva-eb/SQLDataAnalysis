Select 
MIN(Date(created_at))  as Week_start_date,
COUNT(case when device_type='desktop' then website_session_id else null end) as dtop_sessions,
COUNT(case when device_type='mobile' then website_session_id else null end) as mob_sessions
From website_sessions
where created_at<'2012-06-09' and created_at>'2012-04-15' and utm_source='gsearch' and utm_campaign='nonbrand' 
group by Year(created_at), week(created_at);