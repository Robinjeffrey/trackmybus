import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:simple_animations/simple_animations.dart';

class Arrival extends StatefulWidget {
  @override
  _ArrivalState createState() => _ArrivalState();
}

class _ArrivalState extends State<Arrival> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Arrival and Departure",
          style: TextStyle(color: Colors.white),
        ),
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
                        "Notifications",
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
                          child: Lottie.asset('assets/arrivalone.json'),
                        ),
                        const Divider(
                          height: 20,
                          thickness: 5,
                          indent: 20,
                          endIndent: 20,
                        ),
                        FadeAnimation(
                          1.5,
                          ListTile(
                            leading: Icon(Icons.info, color: Colors.red),
                            title: Text(
                              "Bus has started!",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),

                        FadeAnimation(
                          1.5,
                          ListTile(
                            title: Text(
                              " 7:00 AM ",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const Divider(
                          height: 20,
                          thickness: 5,
                          indent: 20,
                          endIndent: 20,
                        ),

                        FadeAnimation(
                          1.5,
                          ListTile(
                            leading: Icon(Icons.info, color: Colors.blue),
                            title: Text(
                              "Bus has arrived to Gandhipuram!",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),

                        FadeAnimation(
                          1.5,
                          ListTile(
                            title: Text(
                              " 7:30 AM ",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),

                        const Divider(
                          height: 20,
                          thickness: 5,
                          indent: 20,
                          endIndent: 20,
                        ),
                        FadeAnimation(
                          1.5,
                          ListTile(
                            leading: Icon(Icons.info, color: Colors.green),
                            title: Text(
                              "Bus has reached to Karunya University!",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),

                        FadeAnimation(
                          1.5,
                          ListTile(
                            title: Text(
                              " 9:00 AM ",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const Divider(
                          height: 20,
                          thickness: 5,
                          indent: 20,
                          endIndent: 20,
                        ),

                        FadeAnimation(
                          1.5,
                          ListTile(
                            leading: Icon(Icons.info, color: Colors.red),
                            title: Text(
                              "Bus has started!",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),

                        FadeAnimation(
                          1.5,
                          ListTile(
                            title: Text(
                              " 4:50 PM ",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),

                        const Divider(
                          height: 20,
                          thickness: 5,
                          indent: 20,
                          endIndent: 20,
                        ),
                        FadeAnimation(
                          1.5,
                          ListTile(
                            leading: Icon(Icons.info, color: Colors.blue),
                            title: Text(
                              "Bus has arrived to Karunya University!",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),

                        FadeAnimation(
                          1.5,
                          ListTile(
                            title: Text(
                              " 5:00 PM ",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),

                        const Divider(
                          height: 20,
                          thickness: 5,
                          indent: 20,
                          endIndent: 20,
                        ),

                        FadeAnimation(
                          1.5,
                          ListTile(
                            leading: Icon(Icons.info, color: Colors.green),
                            title: Text(
                              "Bus has reached to Gandhipuram!",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),

                        FadeAnimation(
                          1.5,
                          ListTile(
                            title: Text(
                              " 6:30 PM ",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),

                        const Divider(
                          height: 20,
                          thickness: 5,
                          indent: 20,
                          endIndent: 20,
                        ),

//df

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
