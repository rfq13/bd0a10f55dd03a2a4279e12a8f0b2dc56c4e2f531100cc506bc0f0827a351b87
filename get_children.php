<?php
require_once('koneksi.php');
function get_children($name)
{
    $parent = getData(
        sqlGetByName($name),false
    );

    $child = getData(
        "SELECT id,name FROM member where parent_id=$parent->id"
    );

    return array_column((array)$child,'name');
}