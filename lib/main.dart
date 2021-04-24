import 'package:flutter/material.dart';
import 'package:trackmybus/changepassword.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Splashscreen.dart';
import 'package:trackmybus/dark.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDirectory =
      await pathProvider.getApplicationDocumentsDirectory();

  Hive.init(appDocumentDirectory.path);

  final settings = await Hive.openBox('settings');
  bool isLightTheme = settings.get('isLightTheme') ?? false;

  print(isLightTheme);

  runApp(ChangeNotifierProvider(
    create: (_) => ThemeProvider(isLightTheme: isLightTheme),
    child: AppStart(),
  ));
}

// to ensure we have the themeProvider before the app starts lets make a few more changes.

class AppStart extends StatelessWidget {
  const AppStart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return MyApp(
      themeProvider: themeProvider,
    );
  }
}

class MyApp extends StatefulWidget with WidgetsBindingObserver {
  final ThemeProvider themeProvider;

  const MyApp({Key key, @required this.themeProvider}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Light Dark Theme',
      theme: widget.themeProvider.themeData(),
      home: MyApplication(),
    );
  }
}






//gh

class MyApplication extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApplication> {
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
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Please enter a valid username";
                          } else if (value.length > 30) {
                            return "Username should not exceed 8 characters";
                          }
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Username",
                          hintText: "Username",
                          suffixIcon:
                              Icon(Icons.account_circle, color: Colors.white),
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
                            return "Your password must contain at least 6 characters";
                          }
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Password",
                          hintText: "Password",
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
                        content: Text("Form Validated"),
                      ));
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Splashscreen()));
                    } else {
                      scaffoldKey.currentState.showSnackBar(SnackBar(
                        content: Text("Please fill for log in"),
                      ));
                    }
                  },
                  child: Text(
                    "LOGIN",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                FlatButton(
                  onPressed: _launchURL,
                  child: Text(
                      'Forgotten Password?   Please contact tmbsupport@trackmybus.edu',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.underline)),
                ),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Changepassword()));
                  },
                  child: Text(
                    "CHANGE PASSWORD",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  _launchURL() async {
    const url =
        'https://mail.google.com/mail/u/2/#inbox?compose=CllgCJqSvWxhbQlDBgZTWDGSbdqkNStJwHhJkshxhQrSPdJsPWBdLBNclxpwkLjkfXJmqZNHXGV';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
