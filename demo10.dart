import 'dart:io';
import 'dart:convert';

getDatafromxx() async {
  // https://news-at.zhihu.com/api/3/stories/latest

  // create htppsclient object
  var httpClient = new HttpClient();
  // create uri object
  var uri = new Uri.http('news-at.zhihu.com', '/api/3/stories/latest');
  // send request
  var request = await httpClient.getUrl(uri);
  // close request
  var response = await request.close();
  // get response
  return await response.transform(utf8.decoder).join();
}

void main() async {
  var result = await getDatafromxx();
  print(result);
}
