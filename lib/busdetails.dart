import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:lottie/lottie.dart';

class Busdetails extends StatefulWidget {
  @override
  _BusdetailsState createState() => _BusdetailsState();
}

class _BusdetailsState extends State<Busdetails> {
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
                        "Bus Details",
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
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                             SizedBox(
                height: 300,
                width: 300,
                child: Lottie.asset('assets/office.json')),
                        FadeAnimation(
                          1.5,
                          Text(
                            " From - Gandhipuram bus stop",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        FadeAnimation(
                          1.5,
                          ListTile(
                              leading: Icon(Icons.stop_circle_outlined,
                                  color: Colors.pink),
                              title: Text(
                                "Gandhipuram , Coimbatore",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FadeAnimation(
                          1.5,
                          Text(
                            "To - Karunya Nagar",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        FadeAnimation(
                          1.5,
                          ListTile(
                              leading: Icon(Icons.stop_circle_outlined,
                                  color: Colors.green),
                              title: Text(
                                "Karunya Institute of Technology and Sciences",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FadeAnimation(
                          1.5,
                          ListTile(
                              leading: Icon(Icons.stop_circle_outlined,
                                  color: Colors.blue),
                              title: Text(
                                "Morning Start Time - 7:30 AM",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FadeAnimation(
                          1.5,
                          ListTile(
                              leading: Icon(Icons.stop_circle_outlined,
                                  color: Colors.red),
                              title: Text(
                                "Evening Drop Time - 6:30 PM",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FadeAnimation(
                          1.5,
                          ListTile(
                              leading: Icon(Icons.directions_bus,
                                  color: Colors.black),
                              title: Text(
                                "Vehicle Number - TN 38 BW 0139",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FadeAnimation(
                            1.5,
                            Text(
                              "LOCATION",
                              style: TextStyle(color: Colors.grey),
                            )),
                        FadeAnimation(
                          1.5,
                          ListTile(
                              leading: Icon(Icons.place, color: Colors.grey),
                              title: Text(
                                "11.017251,76.967642",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FadeAnimation(
                            1.5,
                            Text(
                              "DRIVER",
                              style: TextStyle(color: Colors.grey),
                            )),
                        FadeAnimation(
                          1.5,
                          ListTile(
                              leading: Icon(Icons.person_rounded,
                                  color: Colors.blueGrey),
                              title: Text(
                                "Christopher Williams     9585328061",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                        SizedBox(
                          height: 30,
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

  FadeAnimation(this.delay, this.child);

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
