import 'package:flutter/material.dart';
import 'package:trash_to_cash/Screens/loginScreen.dart';

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Center(child:Text("Sign Up"))),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Username",
                    hintStyle: TextStyle(color: Colors.lightBlue),
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),

                SizedBox(
                  height: 10.0,
                ),

                TextField(
                          obscureText: true,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.lightBlue),
                            contentPadding:
                                EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(32.0)),
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),

                        SizedBox(
                          width: double.infinity,
                          child: RaisedButton(
                            child: Text("Sign Up".toUpperCase()),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            onPressed: () {
                            },
                          ),
                        ),
                        SizedBox(
                              height: 40.0,
                            ),
                        SizedBox(
                          width: double.infinity,
                          child: RaisedButton(
                            child: Text("Already has an Account? Click Here to Log In".toUpperCase()),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginScreen(),
                                  ));
                            },
                          ),
                        ), 
              ]
            ),
          ),
            
          ),
      ),
      
    );
  }
}