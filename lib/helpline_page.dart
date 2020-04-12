import 'package:covidtracker/constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'constants.dart';

class HelplinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0E0F20),
        scaffoldBackgroundColor: Color(0xFF0E0F20),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Helpline Contacts'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedBtn(
                  titleText: Text('Ministry of Health and Family Welfare',
                      style: kHelplineText),
                  onTap: () => launch('https://www.mohfw.gov.in/')),
              RaisedBtn(
                  titleText: Text('Call Helpline Number', style: kHelplineText),
                  onTap: () => launch('tel:+91-11-23978046')),
              RaisedBtn(
                  titleText: Text('Call Toll-Free Helpline Number',
                      style: kHelplineText),
                  onTap: () => launch('tel:1075')),
              RaisedBtn(
                  titleText: Text('Mail Helpline', style: kHelplineText),
                  onTap: () => launch('mailto:ncov2019@gov.in')),
              RaisedBtn(
                  titleText:
                      Text('INDIA COVID-19 TRACKER', style: kHelplineText),
                  onTap: () => launch('https://www.covid19india.org/')),
            ],
          ),
        ),
      ),
    );
  }
}

class RaisedBtn extends StatelessWidget {
  RaisedBtn({@required this.titleText, @required this.onTap});

  final Widget titleText;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onTap,
      textColor: Colors.white,
      padding: const EdgeInsets.all(0.0),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color(0xFF0D47A1),
              Color(0xFF1976D2),
              Color(0xFF42A5F5),
            ],
          ),
        ),
        padding: const EdgeInsets.all(10.0),
        child: titleText,
      ),
    );
  }
}
