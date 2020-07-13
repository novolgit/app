import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Unfollowing extends StatefulWidget {
  @override
  _UnfollowingState createState() => _UnfollowingState();
}

class _UnfollowingState extends State<Unfollowing> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: CustomScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            expandedHeight: 40.0,
            centerTitle: true,
            backgroundColor: Colors.white,
            title: Text('Unfollowing',
              style: TextStyle(
                fontFamily: 'Billabong',
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
            ),
          leading:
            IconButton(
              icon: Icon(Icons.arrow_back),
              iconSize: 30.0,
              color: Colors.black,
              onPressed: () => Navigator.pop(context),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                height: 500,
                width: 300,
                color: Colors.blue,
              ),
              Container(
                height: 500,
                width: 300,
                color: Colors.yellow,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}