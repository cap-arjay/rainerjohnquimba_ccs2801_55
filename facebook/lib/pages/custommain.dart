import 'package:facebook/pages/friends.dart';
import 'package:facebook/pages/marketpalce.dart';
import 'package:facebook/pages/newsfeed.dart';
import 'package:facebook/pages/notification.dart';
import 'package:facebook/pages/profile.dart';
import 'package:facebook/pages/reels.dart';
import 'package:flutter/material.dart';

class CustomMain extends StatefulWidget {
  const CustomMain({super.key});

  @override
  State<CustomMain> createState() => _CustomMainState();
}

class _CustomMainState extends State<CustomMain> {
  int currentpage = 0;

  List pages = [
    const Newsfeed(),
    const ReelsPage(),
    const FriendsPage(),
    const MarketPlacePage(),
    const NotificationPage(),
    const ProfilePage(),
  ];

  void ontapped(int index) {
    setState(() {
      currentpage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentpage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentpage,
        type: BottomNavigationBarType.fixed,
        onTap: ontapped,
        items: const [
          
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.ondemand_video), label: "reels"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "friends"),
          BottomNavigationBarItem(icon: Icon(Icons.local_convenience_store), label: "marketplace"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "notifications"),
          BottomNavigationBarItem(icon: CircleAvatar(
            backgroundImage: AssetImage("assets/profile/prof2.jpg"),
          ), label: "profile"),
        ]
      ),
    );
  }
}