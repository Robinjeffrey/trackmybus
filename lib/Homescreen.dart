import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trackmybus/arrival.dart';
import 'package:trackmybus/attendance.dart';
import 'package:trackmybus/busdetails.dart';
import 'package:trackmybus/busstop.dart';
import 'package:trackmybus/feedback.dart';

import 'bustracklocation.dart';
import 'feedback.dart';

import 'package:simple_animations/simple_animations.dart';

class Homescreen extends StatelessWidget {
  Items item1 = new Items(
    title: "Bus Attendance",
    subtitle: "Give Attendance",
    event: "Mark your Bus Attendance",
    img: "assets/attendanceone.png",
    navigateToPage: Attendance(),
  );

  Items item2 = new Items(
    title: "Bus Track Location",
    subtitle: "Search Route",
    event: "Track your location",
    img: "assets/bb.png",
    navigateToPage: Bustracklocation(),
  );
  Items item3 = new Items(
    title: "Bus Stop",
    subtitle: " 6 Bus Stops",
    event: "View Bus Stop Details",
    img: "assets/stopone.png",
    navigateToPage: Busstop(),
  );
  Items item4 = new Items(
    title: "Notifications",
    subtitle: "Show the Notification",
    event: "Arrival and Departure Time",
    img: "assets/timeone.png",
    navigateToPage: Arrival(),
  );
  Items item5 = new Items(
    title: "Bus Details",
    subtitle: "Bus no,Driver name and Phone no",
    event: "View Bus Details",
    img: "assets/detailsone.png",
    navigateToPage: Busdetails(),
  );
  Items item6 = new Items(
    title: "Feedback",
    subtitle: "Complaint Register",
    event: "Give your feedback",
    img: "assets/feedbackone.png",
    navigateToPage: feedback(),
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    var color = 0xFF65AFF5;
    return Container(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => data.navigateToPage));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Color(color),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FadeAnimation(
                      2.0,
                      Image.asset(
                        data.img,
                        width: 42,
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    FadeAnimation(
                      2.0,
                      Text(
                        data.title,
                        style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    FadeAnimation(
                      2.0,
                      Text(
                        data.subtitle,
                        style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white70,
                                fontSize: 10,
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    FadeAnimation(
                      2.0,
                      Text(
                        data.event,
                        style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white70,
                                fontSize: 11,
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;
  StatefulWidget navigateToPage;
  Items({this.title, this.subtitle, this.event, this.img, this.navigateToPage});
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
