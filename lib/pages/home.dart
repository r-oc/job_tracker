import 'package:flutter/material.dart';
import 'package:job_tracker/services/application.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Application> applications = [
    Application(companyName: "Microsoft", jobTitle: "Software Engineer", location: "San Francisco, California", image: "microsoft.png"),
    Application(companyName: "Apple", jobTitle: "Software Engineer Intern", location: "Toronto, Ontario", image: "apple.png"),
    Application(companyName: "SpaceX", jobTitle: "Rocket Engineer", location: "San Francisco, California", image: "spacex.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      body: SafeArea(
        child: ListView.builder(
          itemCount: applications.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
              child: Card(
                child: ListTile(
                  title: Text(applications[index].companyName),
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

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey.shade600,
        unselectedItemColor: Colors.grey.shade300,
        currentIndex: 1,
        fixedColor: Colors.redAccent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_none),
            label: 'Filter',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: 'Calendar',
          ),
        ],
      ),
    );
  }
}
