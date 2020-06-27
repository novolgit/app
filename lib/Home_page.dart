import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.withOpacity(0.3),
        elevation: 0,
        centerTitle: true,
        title: Text('Homme'),
      ),
      body: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                color: Colors.red,
                width: 300,
                height: 300,
                child: Center(
                  child: Text('Subscribe'),
                ),
              ),
              Container(
                color: Colors.red,
                width: 300,
                height: 300,
                child: Center(
                  child: Text('Subscribe'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

