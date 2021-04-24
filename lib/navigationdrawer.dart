import 'package:flutter/material.dart';
import 'package:trackmybus/appinfo.dart';
import 'package:trackmybus/busfare.dart';
import 'package:trackmybus/chat.dart';
import 'package:trackmybus/faq.dart';
import 'package:trackmybus/main.dart';
import 'package:trackmybus/settings.dart';
import 'package:trackmybus/yourprofile.dart';
import 'home.dart';
import 'onBoarding.dart';

class Navigationdrawer extends StatelessWidget {
  const Navigationdrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        child: Padding(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/user.png'),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "Robin Jeffrey",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "robinjeffreyr@karunya.edu.in",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: 20.0,
      ),
      ListTile(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Yourprofile()));
        },
        leading: Icon(
          Icons.person,
          color: Colors.black,
        ),
        title: Text("Your Profile"),
      ),
      ListTile(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Home()));
        },
        leading: Icon(
          Icons.home,
          color: Colors.black,
        ),
        title: Text("Home"),
      ),
      ListTile(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Busfare()));
        },
        leading: Icon(
          Icons.credit_card,
          color: Colors.black,
        ),
        title: Text("Bus Fare"),
      ),
      ListTile(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyHomePage()));
        },
        leading: Icon(
          Icons.assessment,
          color: Colors.black,
        ),
        title: Text("About"),
      ),
      ListTile(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Faq()));
        },
        leading: Icon(
          Icons.help_center_sharp,
          color: Colors.black,
        ),
        title: Text("Help Centre"),
      ),
      ListTile(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Chat()));
        },
        leading: Icon(
          Icons.chat_rounded,
          color: Colors.black,
        ),
        title: Text("Live Chat"),
      ),
      ListTile(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Appinfo()));
        },
        leading: Icon(
          Icons.info_outline_rounded,
          color: Colors.black,
        ),
        title: Text("App info"),
      ),
      ListTile(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Settings()));
        },
        leading: Icon(
          Icons.settings,
          color: Colors.black,
        ),
        title: Text("Settings"),
      ),
      ListTile(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MyApplication()));
        },
        leading: Icon(
          Icons.exit_to_app,
          color: Colors.black,
        ),
        title: Text("Logout"),
      ),
    ]);
  }
}
