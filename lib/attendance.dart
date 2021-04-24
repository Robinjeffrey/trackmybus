import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:trackmybus/absent.dart';

class Attendance extends StatefulWidget {
  @override
  _AttendanceState createState() => _AttendanceState();
}

const MaterialColor _buttonTextColor = MaterialColor(0xFFC41A3B, <int, Color>{
  50: Color(0xFFC41A3B),
  100: Color(0xFFC41A3B),
  200: Color(0xFFC41A3B),
  300: Color(0xFFC41A3B),
  400: Color(0xFFC41A3B),
  500: Color(0xFFC41A3B),
  600: Color(0xFFC41A3B),
  700: Color(0xFFC41A3B),
  800: Color(0xFFC41A3B),
  900: Color(0xFFC41A3B),
});

class _AttendanceState extends State<Attendance> {
  DateTime dateTime;
  final fb = FirebaseDatabase.instance;
  var retrievedName = "";
  String studentname = "";

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _submit() async {
    final form = _formKey.currentState;

    if (form.validate()) {
      print('Form validated.');
    }
  }

  String title = 'Bus Attendance';
  String _friendsVal;
  List _friendsName = [
    'Albert Cruz URK17BT102',
    'Angela Lion URK17EC098',
    'Chris Baker URK17ME100',
    'Coleen Garton URK17CS108',
    'Robin Jeffrey URK17CS105',
    'William George URK17CS015'
  ];
  DateTime _date = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    DateTime _datePicker = await showDatePicker(
        context: context,
        initialDate: _date, // Current Date
        firstDate: DateTime(1947), // First Date
        lastDate: DateTime(2030), // Last Date
        textDirection:
            TextDirection.ltr, // Header Text or Button Direction ltr or rtl
        initialDatePickerMode: DatePickerMode.day, // Day or Year Mode
        selectableDayPredicate: (DateTime val) =>
            val.weekday == 6 || val.weekday == 7 ? false : true, // WeekDay Off
        builder: (BuildContext context, Widget child) {
          return Theme(
            data: ThemeData(
              primarySwatch: _buttonTextColor, // Button Color Ok and Cancel
              primaryColor: Color(0xFF111111), // Picked or select date color
              accentColor: Color(0xFF141314), // Picked or select date color
            ),
            child: child,
          );
        });

    if (_datePicker != null && _datePicker != _date) {
      setState(() {
        _date = _datePicker;
        print(
          _date.toString(),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final ref = fb.reference().child("Attendance");
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: EdgeInsets.only(left: 16.0, right: 16.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(6.0)),
                child: DropdownButton(
                  hint: Text('Select Student Name'),
                  elevation: 5,
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 36.0,
                  isExpanded: true,
                  value: _friendsVal,
                  style: TextStyle(color: Colors.black, fontSize: 17.0),
                  onChanged: (value) {
                    setState(() {
                      _friendsVal = value;
                      studentname = value;
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

//hv
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: RaisedButton.icon(
                    onPressed: () async {
                      pickDate(context);
                    },
                    label: Text(
                      'Select Date',
                      style: TextStyle(color: Colors.white),
                    ),
                    icon: Icon(Icons.calendar_today_outlined,
                        color: Colors.white),
                    textColor: Colors.white,
                    color: Colors.blue,
                  ),
                ),
                Text("Date: " + dateTime.toString().split(" ")[0])
              ],
            ),
            //sda
            SizedBox(
              height: 50,
            ),

            //adfa

            SizedBox(
              height: 150,
            ),
            RaisedButton.icon(
              onPressed: () {
                print('Present');
                ref.child("studentname").set(studentname);
                ref.child("studentname").once().then((DataSnapshot data) {
                  setState(() {
                    retrievedName = data.value;
                  });
                });
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              label: Text(
                'Present',
                style: TextStyle(color: Colors.white),
              ),
              icon: Icon(Icons.check, color: Colors.white),
              textColor: Colors.white,
              splashColor: Colors.greenAccent,
              color: Colors.green,
            ),
            Text("Attendance Verification: " + retrievedName),

            RaisedButton.icon(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Absent()));
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              label: Text(
                'Absent',
                style: TextStyle(color: Colors.white),
              ),
              icon: Icon(
                Icons.close,
                color: Colors.white,
              ),
              textColor: Colors.white,
              splashColor: Colors.red,
              color: Colors.redAccent,
            ),
          ],
        ),
      ),
    );
  }

  pickDate(BuildContext context) {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1995),
            lastDate: DateTime(2030))
        .then((value) {
      setState(() {
        dateTime = value;
      });
    });
  }
}
