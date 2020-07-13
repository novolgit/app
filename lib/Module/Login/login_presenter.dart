import 'dart:async';
import 'package:firstapp/Home_page.dart';
import 'package:firstapp/instagram.dart' as insta;
import 'package:firstapp/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:webview_flutter/webview_flutter.dart';

abstract class LoginViewContract {
  void onLoginScuccess(insta.Token token);
  void onLoginError(String message);
}

class LoginPresenter {
  LoginViewContract _view;
  LoginPresenter(this._view);

  void perform_login() {
    assert(_view != null);
    insta.getToken(constants.APP_ID,
        constants.APP_SECRET).then((token)
    {
      if (token != null) {
        _view.onLoginScuccess(token);
      }
      else {
        _view.onLoginError('Error');
      }
    });
  }
}