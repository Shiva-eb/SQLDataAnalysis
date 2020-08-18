CREATE temporary TABLE entrypages
SELECT min(website_pageview_id) as FirstPage , website_session_id as Sid
FROM website_pageviews
WHERE created_at<'2012-06-12'
group by website_session_id;

SELECT  website_pageviews.pageview_url as landing_page,
count(distinct entrypages.Sid) as sessions_hitting_page

FROM website_pageviews

LEFT JOIN entrypages
ON website_pageviews.website_pageview_id=entrypages.FirstPage

WHERE created_at<'2012-06-12' 
group by landing_page
ORDER BY sessions_hitting_page desc
