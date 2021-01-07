<?php 
// Pour un mot clé
INSERT INTO `mc` (`id`, `mc`) VALUES (NULL, 'mot-cle') ;

// Pour une url
INSERT INTO `url` (`id`, `url`, `shortcut`, `datetime`, `description`) VALUES (NULL, 'url-complete', 'url-racourcie', NOW(), 'desc'); 

// Pour associer les 2 
INSERT INTO `assoc_mc_url` (`id`, `mc_id`, `url_id`) VALUES (NULL, 'id_mot-cle', 'id_url');

?>
