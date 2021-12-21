import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class NetworkHelper {
  NetworkHelper(this.url);

  final Uri url;

  // get weather
  Future getData() async {
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      //print('Response status: ${response.statusCode}');
      //print('Response body: $jsonResponse');
      return jsonResponse;
    } else {
      print('Error: Ops something broke');
    }
  }
}
