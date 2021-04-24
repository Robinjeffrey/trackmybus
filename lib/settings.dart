import 'package:flutter/material.dart';
import 'package:trackmybus/changepassword.dart';
import 'package:settings_ui/settings_ui.dart';

import 'dark.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            " Settings",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          child: SettingsList(
            sections: [
              SettingsSection(
                title: 'Account Settings',
                tiles: [
                  SettingsTile(
                    title: 'Username',
                    subtitle: 'Robin Jeffrey',
                    leading: Icon(Icons.person),
                    onPressed: (BuildContext context) {},
                  ),
                  SettingsTile(
                    title: 'Email',
                    subtitle: 'robinjeffrey@karunya.edu.in',
                    leading: Icon(Icons.mail),
                    onPressed: (BuildContext context) {},
                  ),
                  SettingsTile(
                    title: 'Phone Number',
                    subtitle: '9585328061',
                    leading: Icon(Icons.phone),
                    onPressed: (BuildContext context) {},
                  ),
                ],
              ),
              SettingsSection(
                title: 'Security',
                tiles: [
                  SettingsTile(
                    title: 'Change Password',
                    leading: Icon(Icons.lock),
                    onPressed: (BuildContext context) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Changepassword()));
                    },
                  ),
                  SettingsTile(
                      title: 'Enable Notifications',
                      leading: Icon(Icons.notifications_active),
                      onPressed: (BuildContext context) {},
                      trailing: Switch(
                        value: false,
                        onChanged: (bool state) {
                          print(state);
                        },
                      )),
                ],
              ),
              SettingsSection(
                title: 'Display',
                tiles: [
                  SettingsTile(
                    title: 'Light/Dark Theme',
                    leading: Icon(Icons.settings_display),
                    onPressed: (BuildContext context) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Darkt()));
                    },
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
