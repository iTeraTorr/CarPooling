import 'package:flutter/material.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sign In Page"),
        ),
        body: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(20),
                  child: Image.network(
                      "https://cdn.dnaindia.com/sites/default/files/styles/full/public/2019/09/17/868494-carpooling-service-istock-091719.jpg"),
                ),
                Text(
                  "Kindly Enter Your Number",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Center(
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 60,
                        child: RaisedButton(
                          onPressed: null,
                          child: Text("+91"),
                        ),
                      ),
                      PinEntryTextField(
                        fields: 10,
                        fieldWidth: 14,
                        onSubmit: (String pin) {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text("Number"),
                                  content: Text('No. entered is $pin'),
                                );
                              }); //end showDialog()
                        }, // end onSubmit
                      ),
                    ],
                  ),
                ),
                RaisedButton(
                  onPressed: null,
                  child: Text('Next'),
                )
              ],
            ),
          ),
        ));
  }
}
