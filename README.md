# ipv6自动解析
## 请手动在注释处替换参数
### ￥￥中为注释占位符

## 已知问题
#### 1. 定时任务需要 cd至脚本根目录后执行
#### 2. 无法自动分辨API获取到的ipv6地址还是ipv4地址
#### 注：建议定时任务小于12小时，ipv6地址过期通常是12小时，多次获取失败请确认ipv6网络的稳定性，不稳定的网络没法用，ipv4解析无法内网穿透。
## 软件缺陷：
#### 1. 使用过多临时文件(没有使用正则表达式提取文件)
#### 2. 无法根据提示直接加入所需参数
## 参数说明：
### 公共请求参数
参数名称|描述|类型|必选
:-:|:-:|:-:|:-:
Action|具体操作的指令接口名称，例如，腾讯云 CVM 用户调用 查询实例列表 接口，则 Action 参数即为 DescribeInstances。|String|是
Region|地域参数，用来标识希望操作哪个地域的实例。详细信息可参见 地域和可用区 列表，或使用 查询地域列表 API 接口查看。注意：1. 正常情况下此参数是必须的，如无需传入，则会在相应接口中进行说明。2. 部分区域正在内测中，目前仅面向部分用户开放。|String|否
Timestamp|当前 UNIX 时间戳，可记录发起 API 请求的时间。	UInt|是|Nonce	用户可自定义随机正整数，与 Timestamp 联合起来， 用于防止重放攻击。|UInt|是
SecretId|在云API密钥上申请的标识身份的 SecretId，一个 SecretId 对应唯一的 SecretKey , 而 SecretKey 会用来生成请求签名 Signature。具体可参考 签名方法 章节。|String|是
Signature|请求签名，用来验证此次请求的合法性，需要用户根据实际的输入参数计算得出。计算方法可参考 签名方法 章节。|String|是
SignatureMethod|签名方式，目前支持 HmacSHA256 和 HmacSHA1。只有指定此参数为 HmacSHA256 时，才使用 HmacSHA256 算法验证签名，其他情况均使用 HmacSHA1 验证签名。详细签名计算方法可参考 签名方法 章节。|String|否
Token|临时证书所用的 Token，需要结合临时密钥一起使用。长期密钥不需要 Token。|String|否  
## 请求域名 cns.api.qcloud.com
### 需要的接口参数信息
### [接口请求参数]("https://cloud.tencent.com/document/product/302/8505")
### [修改消息记录]("https://cloud.tencent.com/document/product/302/8511")
