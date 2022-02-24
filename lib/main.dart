import 'package:flutter/material.dart';
import 'skills.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
    home: ShinobiCard()
  ));
}
class ShinobiCard extends StatefulWidget {
  @override
  State<ShinobiCard> createState() => _ShinobiCardState();
}

class _ShinobiCardState extends State<ShinobiCard> {
  int ninjalvl=999;
  List<Skills> skills=[
    Skills(skill: "Ninjutsu", lvl: "S"),
    Skills(skill: "Speed", lvl: "SS"),
    Skills(skill: "Hiding", lvl: "A"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title: Text(
          "Ninja Card",
          style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
          fontFamily: "IndieFlower",
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjalvl+=1;
          });
        },
        child: Text("Eat"),
        backgroundColor: Colors.deepPurple[500] ,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 40.0, 40.0),
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("asset/1.png"),
                radius: 100,
              ),
              Divider(
                height: 30.0,
              ),
              Text(
                "NAME",
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 30.0,
                  letterSpacing: 2.0,
                  fontFamily: "IndieFlower",
                ),
              ),
              Text(
                "Minato",
                style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  fontFamily: "IndieFlower",
                ),
              ),
              SizedBox(height:20.0),
              Text(
                "Ninja Level",
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 30.0,
                  letterSpacing: 2.0,
                  fontFamily: "IndieFlower",
                ),
              ),
              Text(
                "$ninjalvl",
                style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  fontFamily: "IndieFlower",
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.ramen_dining_outlined,
                    color: Colors.deepPurple,
                    size: 40.0,
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    "Udon Noodles & Yakisoba",
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 27.0,
                      fontFamily: "IndieFlower",
                    ),
                  ),
                ],
              ),
              SizedBox(height:20.0),
              Column(
                children: skills.map((skill) => Text("${skill.skill} - ${skill.lvl}",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 25.0,
                    fontFamily: "IndieFlower"
                ),
                )).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

