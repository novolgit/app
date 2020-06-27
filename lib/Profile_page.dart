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
          padding: const EdgeInsets.all(8),
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
                            radius: 20,
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
                              'Followers', style: TextStyle(fontSize: 16),),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text(
                              'Мульон', style: TextStyle(fontSize: 16),),
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
                              'Following', style: TextStyle(fontSize: 16),),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text(
                              '0', style: TextStyle(fontSize: 16),),
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
              ],
            ),
          ],
        ),
      );
  }
}

Widget _getListView() {
  var listView = ListView(
    children: <Widget>[
      Container(
        width: 10,
        height: 50,
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('images/icon.jpg'),
            radius: 20,
            backgroundColor: Colors.transparent,
          ),
        ),
      ),

      ListTile(
        leading: Icon(Icons.person_outline),
        title: Center(child: Text("Followers")),
        trailing: Text("600"),
        onTap: () {
          debugPrint('tapped 1 of list');
        },
      ),
    ],
  );
}
