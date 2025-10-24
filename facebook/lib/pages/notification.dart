import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
const NotificationPage({super.key});

@override
State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text("Notifications"),
actions: [
IconButton(
icon: const Icon(Icons.search),
onPressed: () {

},
),
IconButton(
icon: const Icon(Icons.more_vert),
onPressed: () {

},
),
],
),
body: Column(
children: [
ListTile(
leading: const CircleAvatar(
backgroundImage: NetworkImage("assets/profile/prof9.jpg"), 
),
title: const Text(
"kevin durant share 5 photos.",
maxLines: 2,
overflow: TextOverflow.ellipsis,
),
subtitle: const Text("16h ago"),
trailing: const Icon(Icons.more_vert),
),
ListTile(
leading: const CircleAvatar(
backgroundImage: NetworkImage("assets/profile/prof10.jpg"), 
),
title: const Text(
"stephen curry set the nba record with 15 threes!.",
maxLines: 2,
overflow: TextOverflow.ellipsis,
),
subtitle: const Text("20h ago"),
trailing: const Icon(Icons.more_vert),
),
ListTile(
leading: const CircleAvatar(
backgroundImage: NetworkImage("assets/profile/prof7.jpg"), 
),
title: const Text(
"lebron jame miss the season opener vs golden state'",
maxLines: 2,
overflow: TextOverflow.ellipsis,
),
subtitle: const Text("2h ago"),
trailing: const Icon(Icons.more_vert),
),
ListTile(
leading: const CircleAvatar(
backgroundImage: NetworkImage("assets/profile/prof6.jpg"), 
),
title: const Text(
"victor wembanyama score 40 points vs dallas .",
maxLines: 2,
overflow: TextOverflow.ellipsis,
),
subtitle: const Text("1d ago"),
trailing: const Icon(Icons.more_vert),
),
ListTile(
leading: const CircleAvatar(
backgroundImage: NetworkImage('https://example.com/prof8.jpg'), 
),
title: const Text(
"people you may know'",
maxLines: 2,
overflow: TextOverflow.ellipsis,
),
subtitle: const Text("2d ago"),
trailing: const Icon(Icons.more_vert),
),
],
),
);
}
}