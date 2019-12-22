<?php
/*
 * @Author: your name
 * @Date: 2019-12-21 21:28:57
 * @LastEditTime : 2019-12-22 15:04:29
 * @LastEditors  : Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \undefinedd:\Github\-IPV6-\jisuanqianming.php
 */
    $id=file_get_contents("getqianming_deln.txt");          //读取文件
    $secretKey='￥API的Key￥';#补全Key    
    $signStr=base64_encode(hash_hmac('sha1', $id, $secretKey, true));//计算签名
    $zuizongqianming= rawurlencode($signStr);               //encode编码    
    $myfile=fopen("qianming.txt", "w");                     //写入文件
    fwrite($myfile, $signStr);                              //写入文件
    fclose($myfile);                                        //关闭写入文件流
?>