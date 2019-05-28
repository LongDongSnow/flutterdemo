import 'dart:io';
import 'dart:convert';

HttpClient httpClient = new HttpClient();
get() async {
  try {
    //创建一个HttpClient
    HttpClient httpClient = new HttpClient();
    //打开Http连接
    HttpClientRequest request = await httpClient.getUrl(Uri.parse("https://www.baidu.com"));
    //使用iPhone的UA
    request.headers.add("user-agent", "Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1");
    //等待连接服务器（会将请求信息发送给服务器）
    HttpClientResponse response = await request.close();
    //读取响应内容
    String responseBody = await response.transform(utf8.decoder).join();
    print("读取响应内容$responseBody");
    //输出响应头
    print("输出响应头$response.headers");

    //关闭client后，通过该client发起的所有请求都会中止。
    httpClient.close();
  } catch (e) {
   print("请求失败：$e");
  } finally {
    
  }
}


httpRequest(url) async {
  try {
    //创建一个HttpClient
    HttpClient httpClient = new HttpClient();
    //打开Http连接
    HttpClientRequest request = await httpClient.getUrl(Uri.parse(url));
    //使用iPhone的UA
    request.headers.add("user-agent", "Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1");
    //等待连接服务器（会将请求信息发送给服务器）
    HttpClientResponse response = await request.close();
    //读取响应内容
    String responseBody = await response.transform(utf8.decoder).join();
    print("读取响应内容$responseBody");
    //输出响应头
    print("输出响应头$response.headers");

    //关闭client后，通过该client发起的所有请求都会中止。
    httpClient.close();
  } catch (e) {
    print("请求失败：$e");
  } finally {
    
  }
}
