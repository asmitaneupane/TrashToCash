

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trash_to_cash/Screens/loginScreen.dart';

class SettingsScreen extends StatefulWidget {
  static final String path = "lib/Screens/.dart";

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _dark;

  @override
  void initState() { 
    super.initState();
    _dark = false;
  }

  Brightness _getBrightness() {
     return _dark ? Brightness.dark : Brightness.light;
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      isMaterialAppTheme: true,
      data: ThemeData(
        brightness: _getBrightness(),
      ),
      child: Scaffold(
        backgroundColor: _dark ? null : Colors.grey.shade200,
        appBar: AppBar(
          elevation: 0,
          brightness: _getBrightness(),
          iconTheme: IconThemeData(color: _dark ? Colors.white : Colors.black),
          backgroundColor: Colors.transparent,
          title: Text(
            'Settings',
            style: TextStyle(color: _dark ? Colors.white : Colors.black),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(FontAwesomeIcons.moon),
              onPressed: () {
                setState(() {
                  _dark = !_dark;
                });
              },
            )
          ],
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                 
                  const SizedBox(height: 10.0),
                  Card(
                    elevation: 4.0,
                    margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Column(
                      children: <Widget>[
                        
                        ListTile(
                          leading: Icon(
                            FontAwesomeIcons.language,
                            color: Colors.blue,
                          ),
                          title: Text("Change Language"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            //open change language
                          },
                        ),
                        _buildDivider(),
                        ListTile(
                          leading: Icon(
                            Icons.location_on,
                            color: Colors.blue,
                          ),
                          title: Text("Change Location"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            //open change location
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    "Notification Settings",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  SwitchListTile(
                    activeColor: Colors.blue,
                    contentPadding: const EdgeInsets.all(0),
                    value: true,
                    title: Text("Receive notification"),
                    onChanged: (val) {},
                  ),
                  SwitchListTile(
                    activeColor: Colors.blue,
                    contentPadding: const EdgeInsets.all(0),
                    value: false,
                    title: Text("Receive newsletter"),
                    onChanged: null,
                  ),
                  SwitchListTile(
                    activeColor: Colors.blue,
                    contentPadding: const EdgeInsets.all(0),
                    value: true,
                    title: Text("Receive Offer Notification"),
                    onChanged: (val) {},
                  ),
                  SwitchListTile(
                    activeColor: Colors.blue,
                    contentPadding: const EdgeInsets.all(0),
                    value: true,
                    title: Text("Receive App Updates"),
                    onChanged: null,
                  ),
                  const SizedBox(height: 60.0),
                ],
              ),
            ),
            Positioned(
              bottom: 15.0,
              left: 130.0,
              child: Container(
                width: 50,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              bottom: 18.5,
              left: 131.0,
              child: IconButton(
                icon: Icon(
                  FontAwesomeIcons.signOutAlt,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginScreen(),
                                  ));
                  //log out
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Container _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      width: double.infinity,
      height: 1.0,
      color: Colors.grey.shade400,
    );
  }
}