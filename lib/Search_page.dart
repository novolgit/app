import 'package:flutter/material.dart';

class Search extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.withOpacity(0.3),
        elevation: 0,
        centerTitle: true,
        title: Text('Search'),
      ),
    );
  }
}