import 'package:flutter/material.dart';
import 'imagescreen/camtain_amirica.dart';
import 'imagescreen/iron_man.dart';
import 'imagescreen/marvel.dart';
import 'imagescreen/panther.dart';
import 'imagescreen/ronin.dart';
import 'imagescreen/spider_man.dart';
import 'imagescreen/strange.dart';
import 'imagescreen/Thor.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff233237),
        title: Text("Marvel"),
        centerTitle: true,
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
      drawer: Drawer(),
      body: Container(
        // color: Color(0xff0D261D),

        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          padding: EdgeInsets.all(15),
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => camtain_amirica()));
              },
              child: Hero(
                  tag: "amirica",
                  child: Container(
                    child: Image.asset(
                      "images/camtain_amirica.jpg",
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => iron_man()));
              },
              child: Hero(
                  tag: "ironman",
                  child: Container(
                    child: Image.asset(
                      "images/iron_man.jpg",
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => marvel()));
              },
              child: Hero(
                  tag: "marvel1",
                  child: Container(
                    child: Image.asset(
                      "images/marvel.jpg",
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => panther()));
              },
              child: Hero(
                  tag: "panther1",
                  child: Container(
                    child: Image.asset(
                      "images/panther.jpg",
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => ronin()));
              },
              child: Hero(
                  tag: "ronin1",
                  child: Container(
                    child: Image.asset(
                      "images/ronin.jpg",
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => spider_man()));
              },
              child: Hero(
                  tag: "spiderman",
                  child: Container(
                    child: Image.asset(
                      "images/spider_man.jpg",
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => strange()));
              },
              child: Hero(
                  tag: "strange1",
                  child: Container(
                    child: Image.asset(
                      "images/strange.jpg",
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => thor()));
              },
              child: Hero(
                  tag: "thor1",
                  child: Container(
                    child: Image.asset(
                      "images/Thor.jpg",
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
