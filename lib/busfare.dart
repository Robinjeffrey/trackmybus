import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:simple_animations/simple_animations.dart';

class Busfare extends StatefulWidget {
  @override
  _BusfareState createState() => _BusfareState();
}

class _BusfareState extends State<Busfare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Color(0xFF0D47A1),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.blue[900],
          Colors.blue[800],
          Colors.blue[400]
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(
                      1,
                      Text(
                        "Bus Fare",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60)),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        FadeAnimation(
                            1.4,
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 20,
                                        offset: Offset(0, 10))
                                  ]),
                            )),
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                FadeAnimation(
                                  1.5,
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/user.png'),
                                    radius: 40,
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                FadeAnimation(
                                    1.2,
                                    Text(
                                      "Robin Jeffrey",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FadeAnimation(
                          1.5,
                          Text(
                            "Transportation Charge",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.blue[900],
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                FadeAnimation(
                                    1.2,
                                    Text(
                                      "Bus Route",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  width: 8,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Icon(Icons.arrow_right),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "Gandhipuram - Karunya Nagar",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: <Widget>[
                                FadeAnimation(
                                    1.2,
                                    Text(
                                      "Place",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  width: 40,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Icon(Icons.arrow_right),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "Gandhipuram Bus Stop",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: <Widget>[
                                FadeAnimation(
                                    1.2,
                                    Text(
                                      "Bus Fee",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  width: 15,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Icon(Icons.arrow_right),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "₹ 2000/month",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                          ],
                        ),
                        FadeAnimation(
                          1.5,
                          Text(
                            "Payment Details",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.blue[900],
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FadeAnimation(
                          1.5,
                          Text(
                            "2021",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.blue[900],
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                FadeAnimation(
                                    1.5,
                                    IconButton(
                                      alignment: Alignment.topCenter,
                                      icon: Image.asset(
                                        "assets/january.png",
                                        color: Colors.green,
                                        height: 700,
                                        width: 150,
                                      ),
                                      iconSize: 100.0,
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return SimpleDialog(
                                                title: Text('Payment Details'),
                                                titleTextStyle: TextStyle(
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.blue),
                                                children: [
                                                  const Divider(
                                                    height: 20,
                                                    thickness: 5,
                                                    indent: 20,
                                                    endIndent: 20,
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.today,
                                                    color: Colors.black,
                                                    text:
                                                        'Busfare Date  -->  2021-01-11',
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.attach_money,
                                                    color: Colors.black,
                                                    text: 'Amount --> ₹ 2,000',
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.today,
                                                    color: Colors.black,
                                                    text:
                                                        'Busfare Month --> January',
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.credit_card,
                                                    color: Colors.black,
                                                    text:
                                                        'Payment Mode --> Credit Card',
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.verified_user,
                                                    color: Colors.greenAccent,
                                                    text: 'Status  -->  Paid',
                                                  ),
                                                  RaisedButton.icon(
                                                    onPressed: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) =>
                                                                      Busfare()));
                                                    },
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10.0))),
                                                    label: Text(
                                                      'Back',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    icon: Icon(
                                                      Icons.arrow_left,
                                                      color: Colors.white,
                                                    ),
                                                    textColor: Colors.white,
                                                    splashColor: Colors.blue,
                                                    color: Colors.blueAccent,
                                                  ),
                                                ],
                                              );
                                            });
                                      },
                                    )),
                                SizedBox(
                                  width: 30,
                                ),
                                FadeAnimation(
                                    1.2,
                                    Text(
                                      "January 2021",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                FadeAnimation(
                                    1.5,
                                    IconButton(
                                      alignment: Alignment.topCenter,
                                      icon: Image.asset(
                                        "assets/february.png",
                                        color: Colors.redAccent,
                                        height: 700,
                                        width: 150,
                                      ),
                                      iconSize: 100.0,
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return SimpleDialog(
                                                title: Text('Due Details'),
                                                titleTextStyle: TextStyle(
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.blue),
                                                children: [
                                                  const Divider(
                                                    height: 20,
                                                    thickness: 5,
                                                    indent: 20,
                                                    endIndent: 20,
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.attach_money,
                                                    color: Colors.black,
                                                    text: 'Amount --> ₹ 2,000',
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.today,
                                                    color: Colors.black,
                                                    text:
                                                        'Busfare Month --> February',
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.info,
                                                    color: Colors.redAccent,
                                                    text: 'Status  -->  Due',
                                                  ),
                                                  RaisedButton.icon(
                                                    onPressed: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) =>
                                                                      Busfare()));
                                                    },
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10.0))),
                                                    label: Text(
                                                      'Back',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    icon: Icon(
                                                      Icons.arrow_left,
                                                      color: Colors.white,
                                                    ),
                                                    textColor: Colors.white,
                                                    splashColor: Colors.blue,
                                                    color: Colors.blueAccent,
                                                  ),
                                                ],
                                              );
                                            });
                                      },
                                    )),
                                SizedBox(
                                  width: 30,
                                ),
                                FadeAnimation(
                                    1.2,
                                    Text(
                                      "February 2021",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                FadeAnimation(
                                    1.5,
                                    IconButton(
                                      alignment: Alignment.topCenter,
                                      icon: Image.asset(
                                        "assets/march.png",
                                        color: Colors.green,
                                        height: 700,
                                        width: 150,
                                      ),
                                      iconSize: 100.0,
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return SimpleDialog(
                                                title: Text('Payment Details'),
                                                titleTextStyle: TextStyle(
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.blue),
                                                children: [
                                                  const Divider(
                                                    height: 20,
                                                    thickness: 5,
                                                    indent: 20,
                                                    endIndent: 20,
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.today,
                                                    color: Colors.black,
                                                    text:
                                                        'Busfare Date  -->  2021-03-13',
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.attach_money,
                                                    color: Colors.black,
                                                    text: 'Amount --> ₹ 2,000',
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.today,
                                                    color: Colors.black,
                                                    text:
                                                        'Busfare Month --> March',
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.credit_card,
                                                    color: Colors.black,
                                                    text:
                                                        'Payment Mode --> Credit Card',
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.verified_user,
                                                    color: Colors.greenAccent,
                                                    text: 'Status  -->  Paid',
                                                  ),
                                                  RaisedButton.icon(
                                                    onPressed: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) =>
                                                                      Busfare()));
                                                    },
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10.0))),
                                                    label: Text(
                                                      'Back',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    icon: Icon(
                                                      Icons.arrow_left,
                                                      color: Colors.white,
                                                    ),
                                                    textColor: Colors.white,
                                                    splashColor: Colors.blue,
                                                    color: Colors.blueAccent,
                                                  ),
                                                ],
                                              );
                                            });
                                      },
                                    )),
                                SizedBox(
                                  width: 30,
                                ),
                                FadeAnimation(
                                    1.2,
                                    Text(
                                      "March 2021",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                FadeAnimation(
                                    1.5,
                                    IconButton(
                                      alignment: Alignment.topCenter,
                                      icon: Image.asset(
                                        "assets/april.png",
                                        color: Colors.redAccent,
                                        height: 700,
                                        width: 150,
                                      ),
                                      iconSize: 100.0,
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return SimpleDialog(
                                                title: Text('Due Details'),
                                                titleTextStyle: TextStyle(
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.blue),
                                                children: [
                                                  const Divider(
                                                    height: 20,
                                                    thickness: 5,
                                                    indent: 20,
                                                    endIndent: 20,
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.attach_money,
                                                    color: Colors.black,
                                                    text: 'Amount --> ₹ 2,000',
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.today,
                                                    color: Colors.black,
                                                    text:
                                                        'Busfare Month --> April',
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.info,
                                                    color: Colors.redAccent,
                                                    text: 'Status  -->  Due',
                                                  ),
                                                  RaisedButton.icon(
                                                    onPressed: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) =>
                                                                      Busfare()));
                                                    },
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10.0))),
                                                    label: Text(
                                                      'Back',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    icon: Icon(
                                                      Icons.arrow_left,
                                                      color: Colors.white,
                                                    ),
                                                    textColor: Colors.white,
                                                    splashColor: Colors.blue,
                                                    color: Colors.blueAccent,
                                                  ),
                                                ],
                                              );
                                            });
                                      },
                                    )),
                                SizedBox(
                                  width: 30,
                                ),
                                FadeAnimation(
                                    1.2,
                                    Text(
                                      "April 2021",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                FadeAnimation(
                                    1.5,
                                    IconButton(
                                      alignment: Alignment.topCenter,
                                      icon: Image.asset(
                                        "assets/may.png",
                                        color: Colors.redAccent,
                                        height: 700,
                                        width: 150,
                                      ),
                                      iconSize: 100.0,
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return SimpleDialog(
                                                title: Text('Due Details'),
                                                titleTextStyle: TextStyle(
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.blue),
                                                children: [
                                                  const Divider(
                                                    height: 20,
                                                    thickness: 5,
                                                    indent: 20,
                                                    endIndent: 20,
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.attach_money,
                                                    color: Colors.black,
                                                    text: 'Amount --> ₹ 2,000',
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.today,
                                                    color: Colors.black,
                                                    text:
                                                        'Busfare Month --> May',
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.info,
                                                    color: Colors.redAccent,
                                                    text: 'Status  -->  Due',
                                                  ),
                                                  RaisedButton.icon(
                                                    onPressed: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) =>
                                                                      Busfare()));
                                                    },
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10.0))),
                                                    label: Text(
                                                      'Back',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    icon: Icon(
                                                      Icons.arrow_left,
                                                      color: Colors.white,
                                                    ),
                                                    textColor: Colors.white,
                                                    splashColor: Colors.blue,
                                                    color: Colors.blueAccent,
                                                  ),
                                                ],
                                              );
                                            });
                                      },
                                    )),
                                SizedBox(
                                  width: 30,
                                ),
                                FadeAnimation(
                                    1.2,
                                    Text(
                                      "May 2021",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FadeAnimation(
                          1.5,
                          Text(
                            "2020",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.blue[900],
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                FadeAnimation(
                                    1.5,
                                    IconButton(
                                      alignment: Alignment.topCenter,
                                      icon: Image.asset(
                                        "assets/june.png",
                                        color: Colors.green,
                                        height: 700,
                                        width: 150,
                                      ),
                                      iconSize: 100.0,
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return SimpleDialog(
                                                title: Text('Payment Details '),
                                                titleTextStyle: TextStyle(
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.blue),
                                                children: [
                                                  const Divider(
                                                    height: 20,
                                                    thickness: 5,
                                                    indent: 20,
                                                    endIndent: 20,
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.today,
                                                    color: Colors.black,
                                                    text:
                                                        'Busfare Date  -->  2020-06-16',
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.attach_money,
                                                    color: Colors.black,
                                                    text: 'Amount --> ₹ 2,000',
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.today,
                                                    color: Colors.black,
                                                    text:
                                                        'Busfare Month --> June',
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.credit_card,
                                                    color: Colors.black,
                                                    text:
                                                        'Payment Mode --> Credit Card',
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.verified_user,
                                                    color: Colors.greenAccent,
                                                    text: 'Status  -->  Paid',
                                                  ),
                                                  RaisedButton.icon(
                                                    onPressed: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) =>
                                                                      Busfare()));
                                                    },
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10.0))),
                                                    label: Text(
                                                      'Back',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    icon: Icon(
                                                      Icons.arrow_left,
                                                      color: Colors.white,
                                                    ),
                                                    textColor: Colors.white,
                                                    splashColor: Colors.blue,
                                                    color: Colors.blueAccent,
                                                  ),
                                                ],
                                              );
                                            });
                                      },
                                    )),
                                SizedBox(
                                  width: 30,
                                ),
                                FadeAnimation(
                                    1.2,
                                    Text(
                                      "June 2020",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                FadeAnimation(
                                    1.5,
                                    IconButton(
                                      alignment: Alignment.topCenter,
                                      icon: Image.asset(
                                        "assets/july.png",
                                        color: Colors.redAccent,
                                        height: 700,
                                        width: 150,
                                      ),
                                      iconSize: 100.0,
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return SimpleDialog(
                                                title: Text('Due Details '),
                                                titleTextStyle: TextStyle(
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.blue),
                                                children: [
                                                  const Divider(
                                                    height: 20,
                                                    thickness: 5,
                                                    indent: 20,
                                                    endIndent: 20,
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.attach_money,
                                                    color: Colors.black,
                                                    text: 'Amount --> ₹ 2,000',
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.today,
                                                    color: Colors.black,
                                                    text:
                                                        'Busfare Month --> July',
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.info,
                                                    color: Colors.redAccent,
                                                    text: 'Status  -->  Due',
                                                  ),
                                                  RaisedButton.icon(
                                                    onPressed: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) =>
                                                                      Busfare()));
                                                    },
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10.0))),
                                                    label: Text(
                                                      'Back',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    icon: Icon(
                                                      Icons.arrow_left,
                                                      color: Colors.white,
                                                    ),
                                                    textColor: Colors.white,
                                                    splashColor: Colors.blue,
                                                    color: Colors.blueAccent,
                                                  ),
                                                ],
                                              );
                                            });
                                      },
                                    )),
                                SizedBox(
                                  width: 30,
                                ),
                                FadeAnimation(
                                    1.2,
                                    Text(
                                      "July 2020",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                FadeAnimation(
                                    1.5,
                                    IconButton(
                                      alignment: Alignment.topCenter,
                                      icon: Image.asset(
                                        "assets/august.png",
                                        color: Colors.green,
                                        height: 700,
                                        width: 150,
                                      ),
                                      iconSize: 100.0,
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return SimpleDialog(
                                                title: Text('Payment Details '),
                                                titleTextStyle: TextStyle(
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.blue),
                                                children: [
                                                  const Divider(
                                                    height: 20,
                                                    thickness: 5,
                                                    indent: 20,
                                                    endIndent: 20,
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.today,
                                                    color: Colors.black,
                                                    text:
                                                        'Busfare Date  -->  2020-08-18',
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.attach_money,
                                                    color: Colors.black,
                                                    text: 'Amount --> ₹ 2,000',
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.today,
                                                    color: Colors.black,
                                                    text:
                                                        'Busfare Month --> August',
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.credit_card,
                                                    color: Colors.black,
                                                    text:
                                                        'Payment Mode --> Credit Card',
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.verified_user,
                                                    color: Colors.greenAccent,
                                                    text: 'Status  -->  Paid',
                                                  ),
                                                  RaisedButton.icon(
                                                    onPressed: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) =>
                                                                      Busfare()));
                                                    },
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10.0))),
                                                    label: Text(
                                                      'Back',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    icon: Icon(
                                                      Icons.arrow_left,
                                                      color: Colors.white,
                                                    ),
                                                    textColor: Colors.white,
                                                    splashColor: Colors.blue,
                                                    color: Colors.blueAccent,
                                                  ),
                                                ],
                                              );
                                            });
                                      },
                                    )),
                                SizedBox(
                                  width: 30,
                                ),
                                FadeAnimation(
                                    1.2,
                                    Text(
                                      "August 2020",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                FadeAnimation(
                                    1.5,
                                    IconButton(
                                      alignment: Alignment.topCenter,
                                      icon: Image.asset(
                                        "assets/september.png",
                                        color: Colors.redAccent,
                                        height: 700,
                                        width: 150,
                                      ),
                                      iconSize: 100.0,
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return SimpleDialog(
                                                title: Text('Due Details '),
                                                titleTextStyle: TextStyle(
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.blue),
                                                children: [
                                                  const Divider(
                                                    height: 20,
                                                    thickness: 5,
                                                    indent: 20,
                                                    endIndent: 20,
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.attach_money,
                                                    color: Colors.black,
                                                    text: 'Amount --> ₹ 2,000',
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.today,
                                                    color: Colors.black,
                                                    text:
                                                        'Busfare Month --> September',
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.info,
                                                    color: Colors.redAccent,
                                                    text: 'Status  -->  Due',
                                                  ),
                                                  RaisedButton.icon(
                                                    onPressed: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) =>
                                                                      Busfare()));
                                                    },
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10.0))),
                                                    label: Text(
                                                      'Back',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    icon: Icon(
                                                      Icons.arrow_left,
                                                      color: Colors.white,
                                                    ),
                                                    textColor: Colors.white,
                                                    splashColor: Colors.blue,
                                                    color: Colors.blueAccent,
                                                  ),
                                                ],
                                              );
                                            });
                                      },
                                    )),
                                SizedBox(
                                  width: 30,
                                ),
                                FadeAnimation(
                                    1.2,
                                    Text(
                                      "September 2020",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                FadeAnimation(
                                    1.5,
                                    IconButton(
                                      alignment: Alignment.topCenter,
                                      icon: Image.asset(
                                        "assets/october.png",
                                        color: Colors.green,
                                        height: 700,
                                        width: 150,
                                      ),
                                      iconSize: 100.0,
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return SimpleDialog(
                                                title: Text('Payment Details '),
                                                titleTextStyle: TextStyle(
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.blue),
                                                children: [
                                                  const Divider(
                                                    height: 20,
                                                    thickness: 5,
                                                    indent: 20,
                                                    endIndent: 20,
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.today,
                                                    color: Colors.black,
                                                    text:
                                                        'Busfare Date  -->  2020-10-11',
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.attach_money,
                                                    color: Colors.black,
                                                    text: 'Amount --> ₹ 2,000',
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.today,
                                                    color: Colors.black,
                                                    text:
                                                        'Busfare Month --> October',
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.credit_card,
                                                    color: Colors.black,
                                                    text:
                                                        'Payment Mode --> Credit Card',
                                                  ),
                                                  SimpleDialogItem(
                                                    icon: Icons.verified_user,
                                                    color: Colors.greenAccent,
                                                    text: 'Status  -->  Paid',
                                                  ),
                                                  RaisedButton.icon(
                                                    onPressed: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) =>
                                                                      Busfare()));
                                                    },
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10.0))),
                                                    label: Text(
                                                      'Back',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    icon: Icon(
                                                      Icons.arrow_left,
                                                      color: Colors.white,
                                                    ),
                                                    textColor: Colors.white,
                                                    splashColor: Colors.blue,
                                                    color: Colors.blueAccent,
                                                  ),
                                                ],
                                              );
                                            });
                                      },
                                    )),
                                SizedBox(
                                  width: 30,
                                ),
                                FadeAnimation(
                                    1.2,
                                    Text(
                                      "October 2020",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 300,
                          width: 300,
                          child: Lottie.asset('assets/splashback.json'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimation(this.delay, this.child, {Null Function() onPressed});

  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("opacity")
          .add(Duration(milliseconds: 500), Tween(begin: 0.0, end: 1.0)),
      Track("translateY").add(
          Duration(milliseconds: 500), Tween(begin: -30.0, end: 0.0),
          curve: Curves.easeOut)
    ]);

    return ControlledAnimation(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builderWithChild: (context, child, animation) => Opacity(
        opacity: animation["opacity"],
        child: Transform.translate(
            offset: Offset(0, animation["translateY"]), child: child),
      ),
    );
  }
}

class SimpleDialogItem extends StatelessWidget {
  const SimpleDialogItem(
      {Key key, this.icon, this.color, this.text, this.onPressed})
      : super(key: key);

  final IconData icon;
  final Color color;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SimpleDialogOption(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 36.0, color: color),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 16.0),
            child: Text(text),
          ),
        ],
      ),
    );
  }
}
