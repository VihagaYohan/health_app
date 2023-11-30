import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

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
                    fontWeight: FontWeight.bold,
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
      body: ListView(children: const []),
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
