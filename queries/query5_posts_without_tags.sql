SELECT p.id, p.title, p.content
FROM posts AS p
LEFT JOIN post_tag_map  ON p.id = post_tag_map.post_id
LEFT JOIN tags AS t ON t.id = post_tag_map.tag_id 
WHERE t.id is NULL;