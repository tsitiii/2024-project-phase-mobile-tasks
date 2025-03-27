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
      body: Column(
        children: [
          Row(
            children: [
              IconButton(
                color: Colors.blueAccent,
                onPressed: () {},
                icon: const Icon(Icons.home),
              ),
              const SizedBox(width: 20),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.group),
              ),
              const SizedBox(width: 20),
              IconButton(icon: const Icon(Icons.person), onPressed: () {}),
              const SizedBox(width: 20),
              IconButton(icon: const Icon(Icons.video_call), onPressed: () {}),
              const SizedBox(width: 20),
              IconButton(
                  icon: const Icon(Icons.notification_add), onPressed: () {}),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Notification",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: const Color.fromARGB(255, 214, 209, 209)),
                  child: IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        
          Expanded(
              child: Container(
            color: const Color.fromARGB(255, 190, 230, 240),
            child: ListView(
              children: [
                ListTile(
                  leading: Image.asset('images/abiy.jpg'),
                  title: const Text("Darrell had shared a new story. blahhh"),
                  subtitle: const Text("what's your rection? follow up."),
                  trailing: const Icon(Icons.do_not_disturb),
                ),
                ListTile(
                  leading: Image.asset('images/abiy.jpg'),
                  title: const Text("Darrell had shared a new story. blahhh"),
                  subtitle: const Text("what's your rection? follow up."),
                  trailing: const Icon(Icons.do_not_disturb),
                ),
                ListTile(
                  leading: Image.asset('images/house4.jpg'),
                  title: const Text("Darrell had shared a new story. blahhh"),
                  subtitle: const Text("what's your rection? follow up."),
                  trailing: const Icon(Icons.do_not_disturb),
                ),
                ListTile(
                  leading: Image.asset('images/harry.jpg'),
                  title: const Text("Darrell had shared a new story. blahhh"),
                  subtitle: const Text("what's your rection? follow up."),
                  trailing: const Icon(Icons.do_not_disturb),
                ),
                ListTile(
                  leading: Image.asset('images/gumball.jpg'),
                  title: const Text("Darrell had shared a new story. blahhh"),
                  subtitle: const Text("what's your rection? follow up."),
                  trailing: const Icon(Icons.do_not_disturb),
                ),
                ListTile(
                  leading: Image.asset('images/gumball.jpg'),
                  title: const Text("Darrell had shared a new story. blahhh"),
                  subtitle: const Text("what's your rection? follow up."),
                  trailing: const Icon(Icons.do_not_disturb),
                ),
                ListTile(
                  leading: Image.asset('images/gumball.jpg'),
                  title: const Text("Darrell had shared a new story. blahhh"),
                  subtitle: const Text("what's your rection? follow up."),
                  trailing: const Icon(Icons.do_not_disturb),
                ),
                ListTile(
                  leading: Image.asset('images/gumball.jpg'),
                  title: const Text("Darrell had shared a new story. blahhh"),
                  subtitle: const Text("what's your rection? follow up."),
                  trailing: const Icon(Icons.do_not_disturb),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
