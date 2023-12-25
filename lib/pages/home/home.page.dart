import 'package:flutter/material.dart';
import 'package:health_hub_app/pages/home/widgets/header.home.dart';
import 'package:health_hub_app/pages/home/widgets/menu.home.dart';
import 'package:health_hub_app/pages/home/widgets/options.home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Color(0xff58e3c5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage("assets/profile_pic.jpg"),
                      ),
                      shape: BoxShape.circle),
                  height: 170,
                ),
                Divider(
                  color: Colors.white,
                  height: 30,
                ),
                Center(
                    child: Text(
                  "Ismail Drissi".toUpperCase(),
                  style: TextStyle(
                      fontFamily: "Gilroy-Bold",
                      fontSize: 25,
                      color: Colors.white),
                )),
                Center(
                  child: Text("@ismaildrs".toLowerCase(),
                      style: TextStyle(
                        fontFamily: "Gilroy-Bold",
                        fontSize: 20,
                        color: Colors.white.withOpacity(0.8),
                      )),
                ),
              ],
            ),
            Center(
              child: Text(
                "HEALTH HUB",
                style: TextStyle(
                    fontFamily: "Gilroy-Bold",
                    fontSize: 25,
                    color: Colors.black),
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [HomeHeader(), OptionsField(), MenuField()],
      ),
    );
  }
}
