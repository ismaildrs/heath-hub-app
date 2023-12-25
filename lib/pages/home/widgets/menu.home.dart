import 'package:flutter/material.dart';
import 'package:health_hub_app/pages/home/home.page.dart';

class MenuField extends StatelessWidget {
  const MenuField({super.key});

  @override
  Widget build(BuildContext context) {
    return const Container(
        width: double.infinity,
        height: 60,
        color: Color(0xffebecee),
        child: IconTheme(
          data: IconThemeData(color: Color(0xffb9bfc7), size: 26),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(onTap: () {}, child: Icon(Icons.settings)),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff58e3c5),
                        Color(0xff6FF0DD),
                      ],
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.home, color: Colors.white, size: 35),
                ),
              ),
              GestureDetector(
                  onTap: () {}, child: Icon(Icons.account_circle_rounded))
            ],
          ),
        ));
  }
}
