### 
# @Description: 
 # @Version: 0.1.1
 # @Autor: 冰彦糖
 # @Date: 2019-11-28 22:23:50
 # @LastEditors  : Please set LastEditors
 # @LastEditTime : 2019-12-22 15:02:54
 ###
curl -v "http://ip.gae.zxinc.org/info.php?type=json" > yuanIP.txt;  #从API处获取IP地址写入yuanIP.txt
grep -Po 'myip[" :]+\K[^"]+' yuanIP.txt>IP.txt;                     #使用正则表达式获取IP
read IP < IP.txt;                                                   #读取IP.txt存入名为IP的变量
unixtime=`date '+%s'`;                                              #UNIX时间
# 补全pinjie                                                        
pinjie="cns.api.qcloud.com/v2/index.php?Action=RecordModify&Nonce="${RANDOM}"&Region=&SecretId=￥API的ID￥&Timestamp="${unixtime}"&domain=￥域名￥&recordId=￥解析记录的ID￥&recordLine=默认&recordType=AAAA&subDomain=￥子域名￥&value="${IP};
#需要填入域名，解析记录的ID(可以用腾讯云API在线调试v2 域名查询获取)，或直接更改此pinjie字符串查询，子域名
echo "GET"$pinjie>getqianming.txt;                                  #拼接写入getqianming.txt用于php签名
awk '{printf("%s",$0)}' getqianming.txt>getqianming_deln.txt;       #去除直接<获取时linux导致莫名回车问题
/usr/bin/php jisuanqianming.php                                     #调用jisuanqianming.php
sleep 3s;                                                           #等待计算
read qianming<qianming.txt;                                         #读取签名
qingqiu="https://"${pinjie}"&Signature="${qianming};                #拼接字符串
echo $qingqiu>zuizhong.txt;                                         #写入文件课查询错误使用【可选】
curl $qingqiu;                                                      #请求更改解析   



