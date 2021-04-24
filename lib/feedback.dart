import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class feedback extends StatefulWidget {
  @override
  _feedbackState createState() => _feedbackState();
}

class _feedbackState extends State<feedback> {
  TextEditingController name = TextEditingController();

  TextEditingController reason = TextEditingController();
  String _friendsVal;
  List _friendsName = [
    'Breakdown',
    'Over Speeding',
    'Ragging',
    'Drunk and Drive',
    'Accident',
    'Others'
  ];

  final fb = FirebaseDatabase.instance;
  var retrievedName = "";
  String names = "";
  String ok = "";
  String complaint = "";

  @override
  Widget build(BuildContext context) {
    final ref = fb.reference().child("Feedback");
    return Scaffold(
      appBar: AppBar(
        title: Text("Feedback", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1.0),
                      borderRadius: BorderRadius.circular(6.0)),
                  child: DropdownButton(
                    hint: Text('Feedback Form'),
                    elevation: 5,
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 36.0,
                    isExpanded: true,
                    value: _friendsVal,
                    style: TextStyle(color: Colors.black, fontSize: 17.0),
                    onChanged: (value) {
                      setState(() {
                        _friendsVal = value;
                        complaint = value;
                      });
                    },
                    items: _friendsName.map((value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(border: Border.all()),
              child: TextField(
                onChanged: (val) {
                  setState(() {
                    names = val;
                  });
                },
                controller: name,
                decoration:
                    InputDecoration(hintText: 'Student name and Register No'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(border: Border.all()),
                child: TextField(
                  onChanged: (val) {
                    setState(() {
                      ok = val;
                    });
                  },
                  controller: reason,
                  maxLines: null,
                  expands: true,
                  decoration: InputDecoration(
                      hintText: 'Please briefly describe the issue'),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton.icon(
              onPressed: () {
                print('Submitted');
                ref.child("Name").set(names);
                ref.child("Feedback").set(ok);
                ref.child("Complaint").set(complaint);
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              label: Text(
                'Submit Feedback',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19.0,
                ),
              ),
              icon: Icon(Icons.fact_check_outlined, color: Colors.white),
              textColor: Colors.white,
              splashColor: Colors.blueAccent,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
