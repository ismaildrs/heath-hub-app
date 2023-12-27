import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  double? _deviceWidth, _deviceHeight;
  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.tealAccent,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
          title: const Text("Profile"),
        ),
        body: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          color: Colors.tealAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: _deviceHeight! * 0.3,
                width: _deviceWidth,
                child: Stack(
                  children: [
                    Positioned(
                      top: 1,
                      child: Container(
                        width: _deviceWidth,
                        height: _deviceHeight! * 0.25,
                        color: Colors.amberAccent,
                      ),
                    ),
                    const Positioned(
                        left: 5,
                        bottom: 1,
                        height: 80,
                        width: 80,
                        child: CircleAvatar(
                            // backgroundImage: Image.network(),
                            )),
                  ],
                ),
              ),
              const Align(
                alignment: Alignment(-0.9, 0),
                child: Column(
                  children: [
                    Text(
                      "Name",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Email",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [BoxShadow(blurRadius: 5)]),
                child: ListTile(
                  title: const Text('Edit Profile'),
                  leading: const Icon(
                    Icons.person,
                    size: 40,
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                  ),
                  onTap: () {},
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [BoxShadow(blurRadius: 5)]),
                child: ListTile(
                  title: const Text('Goal ......'),
                  leading: const Icon(
                    Icons.fitness_center,
                    size: 40,
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                  ),
                  onTap: () {},
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [BoxShadow(blurRadius: 5)]),
                child: ListTile(
                  title: const Text('Goal ......'),
                  leading: const Icon(
                    Icons.fitness_center,
                    size: 40,
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                  ),
                  onTap: () {},
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.grey[500]),
                child: const Text(
                  "Logout",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              )
            ],
          ),
        ));
  }
}
