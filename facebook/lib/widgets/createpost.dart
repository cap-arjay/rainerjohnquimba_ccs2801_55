import 'package:flutter/material.dart';

class Createpost extends StatelessWidget {
  final VoidCallback? onPostCreate;
  const Createpost({super.key, this.onPostCreate});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPostCreate,
      leading: const CircleAvatar(
        backgroundImage: AssetImage("assets/profile/prof2.jpg"),
      ),
      title: const TextField(
        decoration: InputDecoration(
          hintText: "what's on your mind?",
          border: InputBorder.none
        ),
      ),
      trailing: const Icon(Icons.image),
    );
   
  }
}