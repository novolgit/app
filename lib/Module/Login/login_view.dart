import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:firstapp/Module/Login/login_presenter.dart';
import 'package:firstapp/instagram.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LoginPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey =  GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        key: _scaffoldKey,
        body:  LoginScreen(_scaffoldKey),
    );
  }
}

///
///   Contact List
///

class LoginScreen extends StatefulWidget {
  GlobalKey<ScaffoldState> skey;

  LoginScreen(GlobalKey<ScaffoldState> this.skey, {Key key}) : super(key: key);

  @override
  _LoginScreenState createState() =>  _LoginScreenState(skey);
}

class _LoginScreenState extends State<LoginScreen>
    implements LoginViewContract {
  LoginPresenter _presenter;
  bool _IsLoading;
  Token token;

  GlobalKey<ScaffoldState> _scaffoldKey;

  void showInSnackBar(String value) {
    _scaffoldKey.currentState
        .showSnackBar( SnackBar(content:  Text(value)));
  }

  _LoginScreenState(GlobalKey<ScaffoldState> skey) {
    _presenter =  LoginPresenter(this);
    _scaffoldKey = skey;
  }

  @override
  void initState() {
    super.initState();
    _IsLoading = false;
  }

  @override
  void onLoginError(String msg) {
    setState(() {
      _IsLoading = false;
    });
    showInSnackBar(msg);
  }

  @override
  void onLoginScuccess(Token t) {
    setState(() {
      _IsLoading = false;
      token = t;
    });
    showInSnackBar('Login successful');
  }

  @override
  Widget build(BuildContext context) {
    var widget;
    if (_IsLoading) {
      widget =  Center(
          child:  Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child:  CircularProgressIndicator()));
    } else if (token != null) {
      widget =  Padding(
          padding:  EdgeInsets.all(32.0),
          child:  Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                 Text(
                  token.full_name,
                  style: DefaultTextStyle.of(context)
                      .style
                      .apply(fontSizeFactor: 1.5),
                ),
                 Text(token.username),
                 Center(
                  child:  CircleAvatar(
                    backgroundImage:  NetworkImage(token.profile_picture),
                    radius: 50.0,
                  ),
                ),
              ]));
    } else {
      widget =  Padding(
          padding:  EdgeInsets.all(12.0),
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
                    fontSize: 70.0,
                  ),
                ),
                Text(
                  'Log in to continue',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(
                      height: 70,
                    ),
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () => _login(),
                          child: Container(
                            height: 70,
                            margin: const EdgeInsets.only(right: 130),
                            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20.0)), color: Colors.white, boxShadow: [
                              BoxShadow(color: Colors.purple.withAlpha(1000), blurRadius: 10.0),
                            ]),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset('images/instagram.png', width: 50,),
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Text(
                                      "Continue with Instagram",
                                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () => _login,
                      child: Container(
                        height: 70,
                        margin: const EdgeInsets.only(left: 130),
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20.0)), color: Colors.white, boxShadow: [
                          BoxShadow(color: Colors.blue.withAlpha(1000), blurRadius: 10.0),
                        ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset('images/facebook.png', width: 50,),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text(
                                  "Continue with Facebook",
                                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),);
    }
    return widget;
  }

  void _login() {
    setState(() {
      _IsLoading = true;
    });
    _presenter.perform_login();
  }
}
