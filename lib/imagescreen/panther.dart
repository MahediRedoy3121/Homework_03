import 'package:flutter/material.dart';

class panther extends StatelessWidget {
  const panther({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff233237),
        title: Text("Black Panther".toUpperCase()),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.favorite,
              color: Colors.redAccent,
            ),
          )
        ],
      ),
      body: Hero(
        tag: "panther1",
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.asset("images/panther.jpg")],
          ),
        ),
      ),
    );
  }
}
