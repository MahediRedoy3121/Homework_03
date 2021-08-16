import 'package:flutter/material.dart';

class strange extends StatelessWidget {
  const strange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff233237),
        title: Text("doctor strange".toUpperCase()),
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
        tag: "strange1",
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset("images/strange.jpg")],
        ),
      ),
    );
  }
}
