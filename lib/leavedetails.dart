import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class Leavedetails extends StatefulWidget {
  @override
  _LeavedetailsState createState() => _LeavedetailsState();
}

class _LeavedetailsState extends State<Leavedetails> {
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
                        "Leave Details",
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
                        const Divider(
                          height: 20,
                          thickness: 5,
                          indent: 20,
                          endIndent: 20,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: <Widget>[
                            FadeAnimation(
                                1.2,
                                Text(
                                  "Leave ID",
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )),
                            SizedBox(
                              width: 8,
                            ),
                            FadeAnimation(
                              1.3,
                              Icon(Icons.arrow_right, color: Colors.blue[900]),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            FadeAnimation(
                              1.3,
                              Text(
                                "159",
                                style: TextStyle(
                                    color: Colors.blue[900],
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
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
                                    1.2,
                                    Text(
                                      "Name",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  width: 65,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Icon(Icons.arrow_right),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "Robin Jeffrey",
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
                                      "Applied On",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  width: 25,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Icon(Icons.arrow_right),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "19-07-2020",
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
                                      "No of Days",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  width: 25,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Icon(Icons.arrow_right),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "1",
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
                                      "Reason",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  width: 53,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Icon(Icons.arrow_right),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "Fever",
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
                                      "Leave Mode",
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
                                  width: 15,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "Bus Transportation",
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
                        const Divider(
                          height: 20,
                          thickness: 5,
                          indent: 20,
                          endIndent: 20,
                        ),
                        SizedBox(
                          height: 40,
                        ),

                        //vgh

                        Row(
                          children: <Widget>[
                            FadeAnimation(
                                1.2,
                                Text(
                                  "Leave ID",
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )),
                            SizedBox(
                              width: 8,
                            ),
                            FadeAnimation(
                              1.3,
                              Icon(Icons.arrow_right, color: Colors.blue[900]),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            FadeAnimation(
                              1.3,
                              Text(
                                "169",
                                style: TextStyle(
                                    color: Colors.blue[900],
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
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
                                    1.2,
                                    Text(
                                      "Name",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  width: 65,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Icon(Icons.arrow_right),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "Robin Jeffrey",
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
                                      "Applied On",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  width: 25,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Icon(Icons.arrow_right),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "18-08-2020",
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
                                      "No of Days",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  width: 25,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Icon(Icons.arrow_right),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "1",
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
                                      "Reason",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  width: 53,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Icon(Icons.arrow_right),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "Out of Station",
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
                                      "Leave Mode",
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
                                  width: 15,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "Bus Transportation",
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

                        const Divider(
                          height: 20,
                          thickness: 5,
                          indent: 20,
                          endIndent: 20,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: <Widget>[
                            FadeAnimation(
                                1.2,
                                Text(
                                  "Leave ID",
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )),
                            SizedBox(
                              width: 8,
                            ),
                            FadeAnimation(
                              1.3,
                              Icon(Icons.arrow_right, color: Colors.blue[900]),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            FadeAnimation(
                              1.3,
                              Text(
                                "189",
                                style: TextStyle(
                                    color: Colors.blue[900],
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
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
                                    1.2,
                                    Text(
                                      "Name",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  width: 65,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Icon(Icons.arrow_right),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "Robin Jeffrey",
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
                                      "Applied On",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  width: 25,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Icon(Icons.arrow_right),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "22-09-2020",
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
                                      "No of Days",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  width: 25,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Icon(Icons.arrow_right),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "1",
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
                                      "Reason",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  width: 53,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Icon(Icons.arrow_right),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "Marriage at home",
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
                                      "Leave Mode",
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
                                  width: 15,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "Bus Transportation",
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

                        const Divider(
                          height: 20,
                          thickness: 5,
                          indent: 20,
                          endIndent: 20,
                        ),
                        SizedBox(
                          height: 40,
                        ),

                        //lioneeee

                        Row(
                          children: <Widget>[
                            FadeAnimation(
                                1.2,
                                Text(
                                  "Leave ID",
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )),
                            SizedBox(
                              width: 8,
                            ),
                            FadeAnimation(
                              1.3,
                              Icon(Icons.arrow_right, color: Colors.blue[900]),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            FadeAnimation(
                              1.3,
                              Text(
                                "190",
                                style: TextStyle(
                                    color: Colors.blue[900],
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
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
                                    1.2,
                                    Text(
                                      "Name",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  width: 65,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Icon(Icons.arrow_right),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "Robin Jeffrey",
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
                                      "Applied On",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  width: 25,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Icon(Icons.arrow_right),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "21-10-2020",
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
                                      "No of Days",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  width: 25,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Icon(Icons.arrow_right),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "1",
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
                                      "Reason",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  width: 53,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Icon(Icons.arrow_right),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "Health issues",
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
                                      "Leave Mode",
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
                                  width: 15,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "Bus Transportation",
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

//lionm
                        const Divider(
                          height: 20,
                          thickness: 5,
                          indent: 20,
                          endIndent: 20,
                        ),
                        SizedBox(
                          height: 40,
                        ),

                        Row(
                          children: <Widget>[
                            FadeAnimation(
                                1.2,
                                Text(
                                  "Leave ID",
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )),
                            SizedBox(
                              width: 8,
                            ),
                            FadeAnimation(
                              1.3,
                              Icon(Icons.arrow_right, color: Colors.blue[900]),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            FadeAnimation(
                              1.3,
                              Text(
                                "199",
                                style: TextStyle(
                                    color: Colors.blue[900],
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
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
                                    1.2,
                                    Text(
                                      "Name",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  width: 65,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Icon(Icons.arrow_right),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "Robin Jeffrey",
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
                                      "Applied On",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  width: 25,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Icon(Icons.arrow_right),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "08-11-2020",
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
                                      "No of Days",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  width: 25,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Icon(Icons.arrow_right),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "1",
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
                                      "Reason",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  width: 53,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Icon(Icons.arrow_right),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "Out of Station",
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
                                      "Leave Mode",
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
                                  width: 15,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "Bus Transportation",
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

//lkion
                        const Divider(
                          height: 20,
                          thickness: 5,
                          indent: 20,
                          endIndent: 20,
                        ),
                        SizedBox(
                          height: 40,
                        ),

                        Row(
                          children: <Widget>[
                            FadeAnimation(
                                1.2,
                                Text(
                                  "Leave ID",
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )),
                            SizedBox(
                              width: 8,
                            ),
                            FadeAnimation(
                              1.3,
                              Icon(Icons.arrow_right, color: Colors.blue[900]),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            FadeAnimation(
                              1.3,
                              Text(
                                "207",
                                style: TextStyle(
                                    color: Colors.blue[900],
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
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
                                    1.2,
                                    Text(
                                      "Name",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  width: 65,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Icon(Icons.arrow_right),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "Robin Jeffrey",
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
                                      "Applied On",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  width: 25,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Icon(Icons.arrow_right),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "21-10-2020",
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
                                      "No of Days",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  width: 25,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Icon(Icons.arrow_right),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "1",
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
                                      "Reason",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  width: 53,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Icon(Icons.arrow_right),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "Late to college",
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
                                      "Leave Mode",
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
                                  width: 15,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "Bus Transportation",
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
//bb
                        const Divider(
                          height: 20,
                          thickness: 5,
                          indent: 20,
                          endIndent: 20,
                        ),
                        SizedBox(
                          height: 40,
                        ),

                        Row(
                          children: <Widget>[
                            FadeAnimation(
                                1.2,
                                Text(
                                  "Leave ID",
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )),
                            SizedBox(
                              width: 8,
                            ),
                            FadeAnimation(
                              1.3,
                              Icon(Icons.arrow_right, color: Colors.blue[900]),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            FadeAnimation(
                              1.3,
                              Text(
                                "250",
                                style: TextStyle(
                                    color: Colors.blue[900],
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
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
                                    1.2,
                                    Text(
                                      "Name",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  width: 65,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Icon(Icons.arrow_right),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "Robin Jeffrey",
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
                                      "Applied On",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  width: 25,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Icon(Icons.arrow_right),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "20-12-2020",
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
                                      "No of Days",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  width: 25,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Icon(Icons.arrow_right),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "1",
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
                                      "Reason",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  width: 53,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Icon(Icons.arrow_right),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "Fever",
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
                                      "Leave Mode",
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
                                  width: 15,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Text(
                                    "Bus Transportation",
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
