import 'package:flutter/material.dart';
import 'package:trackmybus/main.dart';

class Changepassword extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Changepassword> {
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        body: new Container(
          padding: EdgeInsets.all(40.0),
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Colors.blue[500],
                Colors.blue[400],
                Colors.blue[200],
                Colors.blue[100]
              ])),
          child: Center(
            child: new ListView(
              shrinkWrap: true,
              children: <Widget>[
                Image.asset(
                  "assets/buslogo.png",
                  height: 150.0,
                ),
                SizedBox(
                  height: 50.0,
                ),
                Form(
                  key: formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        obscureText: true,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Please enter your old password";
                          } else if (value.length > 6) {
                            return "Your password must contain at least 6 characters";
                          }
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Enter Old Password",
                          hintText: "Enter Old Password",
                          suffixIcon: Icon(Icons.lock, color: Colors.white),
                          hintStyle: TextStyle(color: Colors.white70),
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      TextFormField(
                        obscureText: true,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Please enter your new password";
                          } else if (value.length > 6) {
                            return "Your password must contain at least 6 characters";
                          }
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Enter New Password",
                          hintText: "Enter New Password",
                          suffixIcon: Icon(Icons.lock, color: Colors.white),
                          hintStyle: TextStyle(color: Colors.white70),
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Please enter your new password again";
                          } else if (value.length > 6) {
                            return "Your password must contain at least 6 characters";
                          }
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Confirm New Password",
                          hintText: "Confirm New Password",
                          suffixIcon: Icon(Icons.lock, color: Colors.white),
                          hintStyle: TextStyle(color: Colors.white70),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                RaisedButton(
                  onPressed: () {
                    if (formKey.currentState.validate()) {
                      scaffoldKey.currentState.showSnackBar(SnackBar(
                        content:
                            Text("Your Password has been changed Succesafully"),
                      ));
                    } else {
                      scaffoldKey.currentState.showSnackBar(SnackBar(
                        content: Text("Error in Password Reset"),
                      ));
                    }
                  },
                  child: Text(
                    "CHANGE PASSWORD",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyApplication()));
                  },
                  child: Text(
                    "CANCEL",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
