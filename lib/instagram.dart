import 'dart:async';
import 'dart:convert';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'dart:io';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:http/http.dart' as http;

Future<Token> getToken(String appId, String appSecret) async {
  Stream<String> onCode = await _server();
  String url =
      "https://api.instagram.com/oauth/authorize?client_id=$appId&redirect_uri=https://github.com/novolgit/&scope=user_profile,user_media&response_type=code";
  final flutterWebviewPlugin = new FlutterWebviewPlugin();
  flutterWebviewPlugin.launch(url);
  final String code = await onCode.first;
  final http.Response response = await http.post(
      "https://api.instagram.com/oauth/access_token",
      body: {"client_id": appId, "redirect_uri": "https://github.com/novolgit/", "client_secret": appSecret,
        "code": code, "grant_type": "authorization_code"});
  flutterWebviewPlugin.close();
  return new Token.fromMap(json.decode(response.body));
}

Future<Stream<String>> _server() async {
  final StreamController<String> onCode = new StreamController();
  HttpServer server =
  await HttpServer.bind(InternetAddress.loopbackIPv4, 8585);
  server.listen((HttpRequest request) async {
    final String code = request.uri.queryParameters["code"];
    request.response
      ..statusCode = 200
      ..headers.set("Content-Type", ContentType.html.mimeType)
      ..write("<html><h1>You can now close this window</h1></html>");
    await request.response.close();
    await server.close(force: true);
    onCode.add(code);
    await onCode.close();
  });
  return onCode.stream;
}

class Token {
  String access;
  String id;
  String username;
  String full_name;
  String profile_picture;

  Token.fromMap(Map json){
    access = json['access_token'];
    id = json['user']['id'];
    username = json['user']['username'];
    full_name = json['user']['full_name'];
    profile_picture = json['user']['profile_picture'];
  }
}