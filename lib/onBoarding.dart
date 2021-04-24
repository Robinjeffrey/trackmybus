

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'about.dart';
import 'home.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    Widget circleBar(bool isActive) {
      return AnimatedContainer(
        duration: Duration(milliseconds: 150),
        margin: EdgeInsets.symmetric(horizontal: 8),
        height: isActive ? 12 : 8,
        width: isActive ? 12 : 8,
        decoration: BoxDecoration(
            color: isActive ? Colors.orange : Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(12))),
      );
    }

    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          PageView.builder(
              itemCount: listOnBoarding.length,
              onPageChanged: (int page) {
                setState(() {
                  currentPage = page;
                });
              },
              itemBuilder: (context, index) {
                onBoarding boarding = listOnBoarding[index];
                return Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          boarding.title,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold, 
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child:Container(
                          padding: EdgeInsets.all(30),
                          child: Lottie.asset(boarding.image),
                        )
                      ),
                      SizedBox(height: 40,),
                      Expanded(
                        flex: 1,
                        child: Text(boarding.description),
                      )
                    ],
                  ),
                );
              }),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (int i = 0; i < listOnBoarding.length; i++)
                    if (i == currentPage) ...[circleBar(true)] else
                      circleBar(false),
                ],
              ),
            ),
          ),
          Visibility(
            visible: currentPage == listOnBoarding.length - 1,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Align(
              alignment: Alignment.bottomRight,
              child : FloatingActionButton(
                onPressed: (){
                  Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home()));

                },
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(26))
                ),
                child: Icon(Icons.arrow_forward),

              ),
              
            ),
            ),
            ),
            Visibility(
            visible: currentPage != listOnBoarding.length - 1,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Align(
              alignment: Alignment.bottomLeft,
              child : FlatButton(
                onPressed: () {
                  Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home()));
                   
                 },
                child: Text('Skip'),
              ),
              
            ),
            ),
            ),
        ],
      )
      ),
    );
  }
}
