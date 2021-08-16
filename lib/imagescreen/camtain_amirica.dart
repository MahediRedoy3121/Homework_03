import 'package:flutter/material.dart';

class camtain_amirica extends StatelessWidget {
  const camtain_amirica({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff233237),
        title: Text("Captain America".toUpperCase()),
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
        tag: "amirica",
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset("images/camtain_amirica.jpg")],
        ),
      ),
    );
  }
}
