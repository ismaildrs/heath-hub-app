import 'package:flutter/material.dart';
import 'package:health_hub_app/pages/home/widgets/widgets.options/box.options.dart';

class OptionsField extends StatelessWidget {
  const OptionsField({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          BoxField(
            boxName: "Sleep Tracker",
            boxImage: "assets/sleep.jpg",
            route: '0',
          ),
          SizedBox(
            height: 10,
          ),
          BoxField(
              boxName: "Weight Tracker",
              boxImage: "assets/fitness.jpg",
              route: '0'),
          SizedBox(
            height: 10,
          ),
          BoxField(
              boxName: "Discover Articles",
              boxImage: "assets/articles.jpg",
              route: '0'),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
