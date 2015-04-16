SELECT post_content as 'contenido' 
FROM wp_akoyasv.wp_posts 
WHERE post_content LIKE '%http://localhost/AkoyaSv/%';

UPDATE wp_posts SET post_content = 
replace(post_content , "http://localhost/AkoyaSv/" , "http://lieison.org/akoyasv/dev/");
