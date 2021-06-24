<?php

require_once('koneksi.php');
function get_tree($name='root')
{
    $sqlroot = "SELECT * FROM member WHERE name = '$name'";
    $root = getData($sqlroot,false);
    $children = null;
    if ($root) {
        $childQuery = "SELECT * FROM member WHERE parent_id = '$root->id'";
        $children = getData($childQuery);
    }

    $result = [
        'name'=>$root->name,
        'children'=>$children
    ];
    return $result;
}