import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'info_list_fetch.dart';
import 'list_view.dart';

class LoadingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoadingScreenState();
  }
}

class _LoadingScreenState extends State<LoadingScreen> {
  List stateList;
  @override
  void initState() {
    super.initState();
    dataGet();
  }

  void dataGet() async {
    var dataOut1 = await CaseInfoFetch().getStatewise();
    stateList = dataOut1;
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ListViewPage(stList: stateList);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitHourGlass(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}
