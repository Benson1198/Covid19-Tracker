import 'package:covidtracker/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'info_list_fetch.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

const List<Key> keys = [
  Key("Network"),
  Key("NetworkDialog"),
  Key("Flare"),
  Key("FlareDialog"),
  Key("Asset"),
  Key("AssetDialog")
];

class ListViewPage extends StatefulWidget {
  ListViewPage({this.stList});
  final stList;
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
//  List stateList;
  @override
//  void initState() {
//    super.initState();
//    dataGet();
//  }

//  void dataGet() async {
//    var dataOut1 = await CaseInfoFetch().getStatewise();
//    stateList = dataOut1;
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State-Wise Distribution'),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: widget.stList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color: Colors.white,
            child: GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (_) => AssetGiffyDialog(
                          image: Image.asset('images/corona_tip.png'),
                          title: Text(
                            '${widget.stList[index]["state"]}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.yellowAccent),
                          ),
                          description: Text(
                            'Confirmed : ${widget.stList[index]["confirmed"]} \n Active : ${widget.stList[index]["active"]} \n Recovered : ${widget.stList[index]["recovered"]} \n Deaths : ${widget.stList[index]["deaths"]}',
                            textAlign: TextAlign.center,
                            style: kListText,
                          ),
                          entryAnimation: EntryAnimation.BOTTOM,
                          onlyCancelButton: true,
                        ));
              },
              child: Center(
                  child: Text(
                '${widget.stList[index]["state"]} : ${widget.stList[index]["confirmed"]}',
                style: kListTitle,
              )),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}

//onPressed: () {
//showDialog(
//context: context,builder: (_) => AssetGiffyDialog(
//imagePath: 'assets/men_wearing_jacket.gif',
//title: Text(
//'${widget.stList[index]["state"]}',
//textAlign: TextAlign.center,
//style: TextStyle(
//fontSize: 22.0, fontWeight: FontWeight.bold),
//),
//description: Text(
//'Confirmed : ${widget.stList[index]["confirmed"]} \n Active : ${widget.stList[index]["active"]} \n Recovered : ${widget.stList[index]["recovered"]} \n Deaths : ${widget.stList[index]["deaths"]}',
//textAlign: TextAlign.center,
//style: kListText,
//),
//entryAnimation: EntryAnimation.RIGHT_LEFT,
//onOkButtonPressed: () {},
//) );
//}
