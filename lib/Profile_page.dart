import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.withOpacity(0.3),
        elevation: 0,
        centerTitle: true,
        title: Text('@username'),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 30,
                    height: 100,
                  ),
                  //              Align(
                  //                alignment: Alignment.bottomRight,
                  Container(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/icon.jpg'),
                      radius: 40,
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        child: Center(
                          child: Text(
                            'Followers', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            'Мульон', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        child: Center(
                          child: Text(
                            'Following', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            '0', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                color: Colors.black,
                width: 1000,
                height: 1,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Container(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/icon.jpg'),
                      radius: 20,
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        child: Center(
                          child: Text(
                            '@username', style: TextStyle(fontSize: 16,
                              fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.red,
                height: 400,
                width: 500,
                child: Flexible(
                  fit: FlexFit.loose,
                  child: Image.asset('images/duck.jpg', fit: BoxFit.cover),
                ),
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.favorite,
                  ),
                  Text('МУльон - 1 likes'),
                IconButton(
                  icon: Icon(
                      Icons.comment),
                  ),
                  Text('23 comments')
                ],
              ),
              Container(
                color: Colors.black,
                width: 1000,
                height: 1,
              ),

              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Container(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/icon.jpg'),
                      radius: 20,
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        child: Center(
                          child: Text(
                            '@username', style: TextStyle(fontSize: 16,
                              fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.red,
                height: 400,
                width: 500,
                child: Flexible(
                  fit: FlexFit.loose,
                  child: Image.asset('images/duck.jpg', fit: BoxFit.cover),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}