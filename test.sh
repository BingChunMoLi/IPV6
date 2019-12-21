### 
# @Description: 
 # @Version: 0.1.1
 # @Autor: 冰彦糖
 # @Date: 2019-11-28 22:23:50
 # @LastEditors: Please set LastEditors
 # @LastEditTime: 2019-12-21 21:11:11
 ###
curl -v "http://ip.gae.zxinc.org/info.php?type=json" > yuanIP.txt;
grep -Po 'myip[" :]+\K[^"]+' yuanIP.txt>IP.txt;
read IP < IP.txt;
unixtime=`date '+%s'`;
# 补全pinjie
pinjie="cns.api.qcloud.com/v2/index.php?Action=RecordModify&Nonce="${RANDOM}"&Region=&SecretId=￥API的ID￥&Timestamp="${unixtime}"&domain=￥域名￥&recordId=￥解析记录的ID￥&recordLine=默认&recordType=AAAA&subDomain=￥子域名￥&value="${IP};
echo "GET"$pinjie>getqianming.txt;
awk '{printf("%s",$0)}' getqianming.txt>getqianming_deln.txt;
/usr/bin/php jisuanqianming.php
sleep 3s;
read qianming<qianming.txt;
qingqiu="https://"${pinjie}"&Signature="${qianming};
echo $qingqiu>zuizhong.txt;
curl $qingqiu;



