import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ViewPostScreen.dart';

class Statistic_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: false,
            expandedHeight: 160.0,
            centerTitle: true,
            backgroundColor: Colors.white,
            title: Text('LOGO',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('images/appBar.jpeg', fit: BoxFit.fill,),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 100,
            delegate: SliverChildListDelegate([
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 30,
                        height: 100,
                      ),
                      Container(
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/icon.jpg'),
                          radius: 40,
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
                ],
              ),
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Container(
                  width: double.infinity,
                  height: 560,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(25.0)),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0),
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                leading: Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black45,
                                        offset: Offset(0, 2),
                                        blurRadius: 6.0,
                                      ),
                                    ],
                                  ),
                                  child: CircleAvatar(
                                    child: ClipOval(
                                      child: Image(
                                        height: 50.0,
                                        width: 50.0,
                                        image: AssetImage('images/icon.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                title: Text(
                                  'posts[index].authorName',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text('posts[index].timeAgo'),
                              ),
                              InkWell(
                                onDoubleTap: () => print('liked post'),
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => ViewPostScreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  margin: EdgeInsets.all(10.0),
                                  width: double.infinity,
                                  height: 400,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25.0),
                                    boxShadow:[
                                      BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(0,5),
                                      blurRadius: 8.0
                                      ),
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage('images/duck.jpg'),
                                        fit: BoxFit.cover)
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        IconButton(
                                          icon: Icon(Icons.favorite_border),
                                          iconSize: 30.0,
                                          onPressed: () => print('Like post'),
                                        ),
                                        Text(
                                          '777',
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        IconButton(
                                          icon: Icon(Icons.comment),
                                          iconSize: 30.0,
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (_) => ViewPostScreen()
                                                ),
                                            );
                                          }
                                        ),
                                        Text(
                                          '36',
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}