import 'package:http/http.dart' as http;
import 'dart:convert';

const covidURL = 'https://api.covid19india.org/data.json';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;
  Future getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}

class CaseInfoFetch {
  Future<dynamic> getStatewise() async {
    NetworkHelper networkHelper = NetworkHelper(covidURL);

    var dataOut = await networkHelper.getData();
    return dataOut["statewise"];
  }
}
