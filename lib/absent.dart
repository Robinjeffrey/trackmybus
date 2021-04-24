import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:trackmybus/leavedetails.dart';

import 'leavedetails.dart';

class Absent extends StatefulWidget {
  @override
  _AbsentState createState() => _AbsentState();
}

class _AbsentState extends State<Absent> {
  final fb = FirebaseDatabase.instance;
  var retrievedName = "";
  String namess = "";
  String reasonss = "";

  TextEditingController name = TextEditingController();

  TextEditingController reason = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final ref = fb.reference().child("Absent");
    return Scaffold(
        appBar: AppBar(
          title: Text("Leave" ,  style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(border: Border.all()),
                child: TextField(
                  onChanged: (val) {
                    setState(() {
                      namess = val;
                    });
                  },
                  controller: name,
                  decoration:
                      InputDecoration(hintText: 'Student name and Register No'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(border: Border.all()),
                  child: TextField(
                    onChanged: (val) {
                      setState(() {
                        reasonss = val;
                      });
                    },
                    controller: reason,
                    maxLines: null,
                    expands: true,
                    decoration:
                        InputDecoration(hintText: 'Write us the reason'),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                onPressed: () {
                  print(' Marked Absent');
                  ref.child("Name").set(namess);
                  ref.child("Reason").set(reasonss);
                },
                splashColor: Colors.grey,
                child: Text(
                  'Apply Leave',
                  
                  style: TextStyle(fontSize: 17.0, color: Colors.white),
                ),
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Leavedetails()));
                },
                splashColor: Colors.grey,
                child: Text(
                  'Leave Details',
                  style: TextStyle(fontSize: 17.0, color: Colors.white),
                ),
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
              ),
            ],
          ),
        ));
  }
}
