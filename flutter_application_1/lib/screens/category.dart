import 'package:flutter/material.dart';

class categorypage extends StatefulWidget {
  const categorypage({super.key});

  @override
  State<categorypage> createState() => _categorypageState();
}

class _categorypageState extends State<categorypage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('All Categories'),
          actions: <Widget>[
           IconButton(
             icon: Icon(Icons.search,
             color: Colors.white,),
            onPressed: () { },   
        )
        ],
        backgroundColor: Colors.blue[800],
        ),
      ),
    );
  }
}