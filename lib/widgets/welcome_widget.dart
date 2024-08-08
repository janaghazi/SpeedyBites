import 'package:flutter/material.dart';

import '../screens/home_screen.dart';

class Welcome_Widget extends StatelessWidget {
  const Welcome_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Center(
              child: Image.asset(
                "assets/delievery_icon.jpeg",
                height: 300,
                width: 300,
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "ORDER NOW",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
                fontStyle: FontStyle.italic),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              "Fast, Fresh, Instant",
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
          ),
          SizedBox(
            height: 90,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 4,
                      offset: Offset(0, 2))
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "press here",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
