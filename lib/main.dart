import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:health_hub_app/pages/home/home.page.dart';
import 'package:health_hub_app/pages/login/login.page.dart';
import 'package:health_hub_app/pages/sleeptracker/sleeptracker.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff58e3c5),
      ),
      title: "Health Hub",
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/sleep': (context) => SleepTracker()
      },
      initialRoute: '/home',
    );
  }
}
