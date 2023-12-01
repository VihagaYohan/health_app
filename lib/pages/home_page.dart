import 'package:flutter/material.dart';
import 'package:health_app/widgets/near_by_doctors.dart';
import 'package:ionicons/ionicons.dart';

// widgets
import 'package:health_app/widgets/upcoming_card.dart';
import 'package:health_app/widgets/health_needs.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi, Jane"),
            Text("How are you feeling today?",
                style: TextStyle(
                    fontFamily: 'PlusJakartaSans',
                    fontWeight: FontWeight.w200,
                    fontSize: 12))
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Ionicons.notifications_outline)),
          IconButton(onPressed: () {}, icon: const Icon(Ionicons.search))
        ],
      ),
      body: ListView(padding: const EdgeInsets.all(14), children: const [
        // upcoming card
        UpcomingCard(),

        SizedBox(height: 20),

        Text('Health Needs',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),

        SizedBox(height: 15),

        // health needs
        HealthNeeds(),

        SizedBox(height: 20),

        Text(
          "Nearby Doctors",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),

        SizedBox(height: 15),

        NearbyDoctors()

        // near by doctors
      ]),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Ionicons.home_outline), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.calendar_outline), label: 'Calendar'),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.chatbubble_outline), label: "Chats"),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.person_outline), label: "Profile")
          ]),
    );
  }
}
