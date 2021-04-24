import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'myMap.dart';
import 'package:url_launcher/url_launcher.dart';

class Bustracklocation extends StatefulWidget {
  const Bustracklocation({Key key}) : super(key: key);

  @override
  _BustracklocationState createState() => _BustracklocationState();
}

class _BustracklocationState extends State<Bustracklocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bus Track Location",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RaisedButton.icon(
              onPressed: _launchURL,
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              label: Text(
                'Demo Video',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19.0,
                ),
              ),
              icon: Icon(Icons.duo_sharp, color: Colors.white),
              textColor: Colors.white,
              splashColor: Colors.blueAccent,
              color: Colors.blue,
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 150,
              width: 150,
              child: Lottie.asset('assets/gps.json'),
            ),
            SizedBox(
              height: 16,
            ),
            RaisedButton.icon(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyMapPage()));
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              label: Text(
                'Track My Bus',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19.0,
                ),
              ),
              icon: Icon(Icons.location_on, color: Colors.white),
              textColor: Colors.white,
              splashColor: Colors.blueAccent,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }

  _launchURL() async {
    const url = 'https://youtu.be/vDRgO12QIgE';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
