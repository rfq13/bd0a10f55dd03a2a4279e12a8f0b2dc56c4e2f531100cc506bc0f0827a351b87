<?php
require_once('koneksi.php');

function get_parents($name='root')
{
    $a = true;
    $parents = [];
    
    do {
        $parent = getData(sqlGetByName($name),false);
        
        $hasParent = getData(
            'SELECT * FROM member where id='.$parent->parent_id,
            false
        );
        // dd($hasParent);
        
        if ($hasParent != null && $hasParent->name != 'root') {
            array_push($parents,$hasParent->name);
            $name = $hasParent->name;
        }else{
            array_push($parents,$hasParent->name);
            $a = false;
        }
        # code...
    } while ($a);

    return $parents;
}
