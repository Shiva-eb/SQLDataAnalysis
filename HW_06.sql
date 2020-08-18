Select pageview_url,
Count(Distinct website_pageview_id) as sessions
FROM website_pageviews
WHERE created_at<'2012-06-09'
GROUP BY pageview_url
order by sessions desc