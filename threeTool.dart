import 'package:http/http.dart' as http;

void main(List<String> arguments) async {
  // import 'package:http/http.dart' as http;

  var url = Uri.https('news-at.zhihu.com', '/api/3/stories/latest');
  var response = await http.get(url);
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');

  print(await http.read(Uri.https('example.com', 'foobar.txt')));
}
