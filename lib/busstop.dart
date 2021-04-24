import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:simple_animations/simple_animations.dart';

class Busstop extends StatefulWidget {
  @override
  _BusstopState createState() => _BusstopState();
}

class _BusstopState extends State<Busstop> {
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
                        "Stop Details",
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
                        SizedBox(
                          height: 300,
                          width: 300,
                          child: Lottie.asset('assets/splashback.json'),
                        ),

                        FadeAnimation(
                            1.5,
                            ListTile(
                              leading: Icon(Icons.pin_drop, color: Colors.pink),
                              title: Text(
                                "11.016716, 76.968693",
                                style: TextStyle(color: Colors.grey),
                              ),
                            )),
                        FadeAnimation(
                          1.5,
                          Text(
                            "   In - Morning 7:30 AM , Out - Evening 6:30 PM ",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),

                        FadeAnimation(
                          1.5,
                          ListTile(
                            title: Text(
                              "Gandhipuram Bus Stop",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FadeAnimation(
                            1.5,
                            ListTile(
                              leading:
                                  Icon(Icons.location_on, color: Colors.green),
                              title: Text(
                                "11.001786, 76.968482",
                                style: TextStyle(color: Colors.grey),
                              ),
                            )),
                        FadeAnimation(
                          1.5,
                          Text(
                            "    In - Morning 7:40 AM , Out - Evening 6:20 PM ",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        FadeAnimation(
                          1.5,
                          ListTile(
                              title: Text(
                            "CSI Immanuel Church",
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
                              leading:
                                  Icon(Icons.location_on, color: Colors.blue),
                              title: Text(
                                "10.994434, 76.962646",
                                style: TextStyle(color: Colors.grey),
                              ),
                            )),
                        FadeAnimation(
                          1.5,
                          Text(
                            "    In - Morning 7:50 AM , Out - Evening 6:10 PM ",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        FadeAnimation(
                          1.5,
                          ListTile(
                              title: Text(
                            "Town Hall Bus Stand",
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
                              leading:
                                  Icon(Icons.location_on, color: Colors.red),
                              title: Text(
                                "10.988529, 76.961703",
                                style: TextStyle(color: Colors.grey),
                              ),
                            )),
                        FadeAnimation(
                          1.5,
                          Text(
                            "    In - Morning 8:00 AM , Out - Evening 6:00 PM ",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        FadeAnimation(
                          1.5,
                          ListTile(
                              title: Text(
                            "Ukkadam Stop",
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
                              leading:
                                  Icon(Icons.location_on, color: Colors.black),
                              title: Text(
                                "10.975623, 76.915281",
                                style: TextStyle(color: Colors.grey),
                              ),
                            )),
                        FadeAnimation(
                          1.5,
                          Text(
                            "    In - Morning 8:15 AM , Out - Evening 5:50 PM ",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        FadeAnimation(
                          1.5,
                          ListTile(
                              title: Text(
                            "Perur Stop",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        //chcek
                        FadeAnimation(
                            1.5,
                            ListTile(
                              leading:
                                  Icon(Icons.location_on, color: Colors.grey),
                              title: Text(
                                "10.953675, 76.788963",
                                style: TextStyle(color: Colors.grey),
                              ),
                            )),
                        FadeAnimation(
                          1.5,
                          Text(
                            "    In - Morning 8:30 AM , Out - Evening 5:30 PM ",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        FadeAnimation(
                          1.5,
                          ListTile(
                              title: Text(
                            "Alandurai Stop",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        //check
                        FadeAnimation(
                            1.5,
                            ListTile(
                              leading: Icon(Icons.where_to_vote,
                                  color: Colors.blueGrey),
                              title: Text(
                                "10.938629, 76.744161",
                                style: TextStyle(color: Colors.grey),
                              ),
                            )),
                        FadeAnimation(
                          1.5,
                          Text(
                            "    In - Morning 9:00 AM , Out - Evening 5:00 PM ",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        FadeAnimation(
                          1.5,
                          ListTile(
                              title: Text(
                            "Karunya Institute of Technology and Sciences",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                        SizedBox(
                          height: 30,
                        ),

                        //start
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
