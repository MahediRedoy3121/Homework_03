import 'package:flutter/material.dart';

class iron_man extends StatelessWidget {
  const iron_man({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff233237),
        title: Text("iron man".toUpperCase()),
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
        tag: "ironman",
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset("images/iron_man.jpg")],
        ),
      ),
    );
  }
}
