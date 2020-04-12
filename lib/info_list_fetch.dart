import 'package:flutter/material.dart';
import 'networking.dart';

const covidURL = 'https://api.covid19india.org/data.json';

class CaseInfoFetch {
  Future<dynamic> getStatewise() async {
    NetworkHelper networkHelper = NetworkHelper(covidURL);
    var dataOut = await networkHelper.getData();
    return dataOut["statewise"];
  }
}
