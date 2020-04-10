import 'package:flutter/material.dart';
import 'package:covidtracker/resusable_card.dart';
import 'networking.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  void initState() {
    super.initState();
    dataGet();
  }

  Future<dynamic> dataGet() async {
    CaseInfoFetch caseInfoFetch = CaseInfoFetch();
    var dataOut1 = await caseInfoFetch.getStatewise();
    return dataOut1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State-Wise Distribution'),
      ),
      body: Container(),
    );
  }
}

//
//ReusableCard(
//colour: Colors.cyan,
//onPress: () async {
//var data = await dataGet();
//print(data[0]);
//},
//),
