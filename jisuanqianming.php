<?php
    $id=file_get_contents("getqianming_deln.txt");
    $secretKey='￥API的Key￥';#补全Key
    echo $id;
    $signStr=base64_encode(hash_hmac('sha1', $id, $secretKey, true));
    $zuizongqianming= rawurlencode($signStr);
    $myfile=fopen("qianming.txt", "w");
    fwrite($myfile, $signStr);
    fclose($myfile);
?>