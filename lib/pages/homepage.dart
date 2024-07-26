import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Homepage extends StatefulWidget {
  static final String id = 'home_page';
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/animal/img_1.png"))),
        child: ListView(
          children: [
            Container(
              height: 145,
              width: double.infinity,
              child: Lottie.asset("assets/lottie/monkey.json"),
            ),
            InkWell(
              onTap: () {},
              child: gameContainer("Animals game", "assets/animal/img_2.png"),
            ),
            InkWell(
              onTap: () {},
              child: gameContainer("Animals game", "assets/animal/img_2.png"),
            ),
          ],
        ),
      ),
    );
  }

  gameContainer(name, image) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.4),
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.brown.shade700, width: 5)),
      child: Column(
        children: [
          SizedBox(
            height: 200,
            child: Image.asset(image),
          ),
          Text(
            name,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.brown.shade700),
          )
        ],
      ),
    );
  }
}
