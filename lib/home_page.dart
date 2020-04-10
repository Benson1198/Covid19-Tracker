import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'list_view.dart';
import 'resusable_card.dart';
import 'constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int confCases;
  int activeCases;
  int recoveredCases;
  int deceasedCases;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("COVID19 Tracker India"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: ReusableCard(
              colour: Color(0xFF0E0F20),
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: Color(0xFF99003C),
                      cardChild: Center(
                        child: Text(
                          'Total Cases: $confCases',
                          style: kHomeCard1,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: Color(0xFFFFC2B3),
                      cardChild: Center(
                        child: Text(
                          'Active Cases: $confCases',
                          style: kHomeCard2,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: Color(0xFFC2F0C2),
                      cardChild: Center(
                        child: Text(
                          'Recovered Cases: $confCases',
                          style: kHomeCard3,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: Color(0xFFD1D1E0),
                      cardChild: Center(
                        child: Text(
                          'Deceased Cases: $confCases',
                          style: kHomeCard4,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: Colors.white,
                    cardChild: Column(
                      children: <Widget>[
                        SizedBox(height: 12.0),
                        Icon(
                          Icons.refresh,
                          color: Colors.black,
                          size: 55.0,
                        ),
                        Text(
                          'Refresh',
                          style: TextStyle(
                              fontSize: 17.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: ReusableCard(
                    onPress: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ListViewPage();
                      }));
                    },
                    colour: Colors.red,
                    cardChild: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'See State-Wise Distribution',
                          style: kBelowButton,
                          textAlign: TextAlign.center,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: 40.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
