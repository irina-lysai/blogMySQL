SELECT tag.tag_name, COUNT(post_tag_map.tag_id) as amount_of_posts 
FROM tags as tag
LEFT JOIN post_tag_map  ON tag.id = post_tag_map.tag_id
GROUP BY tag.id;