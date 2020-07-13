import 'package:flutter/material.dart';

class Auth extends StatefulWidget {

  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'CheckAll',
                  style: TextStyle(
                    fontFamily: 'Billabong',
                    fontSize: 50.0,
                  ),
                ),
                InkWell(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        width: 250.0,
                        child: FlatButton(
                          onPressed: () => Navigator.pop(context),
                          color: Colors.white,
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'Enter',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        width: 250.0,
                        child: FlatButton(
                          onPressed: () => Navigator.pop(context),
                          color: Colors.blue,
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'Back to Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}