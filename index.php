<?php
require_once('get_tree.php');
require_once('get_parents.php');
require_once('get_children.php');

echo json_encode(
    get_children('John')
);



