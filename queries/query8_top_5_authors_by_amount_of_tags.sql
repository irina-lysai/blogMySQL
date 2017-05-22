SELECT info.id, info.username, info.email, info.first_name,
	   info.middle_name, info.last_name, SUM(info.count) as COUNT_OF_TAGS 
FROM (
	SELECT a.*, COUNT(t.id) as count FROM authors AS a
	JOIN posts AS p ON a.id = p.author_id
	LEFT JOIN post_tag_map AS ptm ON ptm.post_id = p.id
	LEFT JOIN tags AS t ON t.id = ptm.tag_id
	WHERE t.id IS NOT NULL
	GROUP BY a.id, t.id) AS info
GROUP BY info.id
ORDER BY COUNT_OF_TAGS desc
LIMIT 5;