import 'package:flutter/material.dart';
import 'package:job_tracker/services/application.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _bottomNavIndex = 1;

  List<Application> applications = [
    Application(companyName: "Microsoft", jobTitle: "Software Engineer", location: "San Francisco, California", image: "microsoft.png"),
    Application(companyName: "Apple", jobTitle: "Software Engineer Intern", location: "Toronto, Ontario", image: "apple.png"),
    Application(companyName: "SpaceX", jobTitle: "Rocket Engineer", location: "San Francisco, California", image: "spacex.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  ),
                  child: const Icon(Icons.search),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: applications.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
                    child: Card(
                      elevation: 5,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: ListTile(
                        title: Text(applications[index].companyName),
                        onTap: () {},
                        subtitle: Text(applications[index].jobTitle),
                        leading: CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('assets/${applications[index].image}'),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.redAccent,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: AnimatedBottomNavigationBar(
        shadow: Shadow(
          blurRadius: 50,
          color: Colors.grey.shade500,
        ),
        rightCornerRadius: 15,
        leftCornerRadius: 15,
        backgroundColor: Colors.white,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        icons: const [
          Icons.filter_none,
          Icons.calendar_month_outlined,
        ],
        onTap: (index) => setState(() => _bottomNavIndex = index),
      ),
    );
  }
}
