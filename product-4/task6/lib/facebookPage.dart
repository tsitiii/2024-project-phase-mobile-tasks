import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class FaceBookPage extends StatefulWidget {
  const FaceBookPage({super.key});

  @override
  State<FaceBookPage> createState() => _FaceBookPageState();
}

class _FaceBookPageState extends State<FaceBookPage> {
  List<String> imagePaths = [
    'images/house4.jpg',
    'images/home2.jpg',
    'images/nike.jpg',
    'images/jordan.jpg',
    'images/harry.jpg',
    'images/nike2.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 233, 239, 244),
        title: const Text(
          "Facebook",
          style: TextStyle(
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              MaterialCommunityIcons.facebook_messenger,
              color: Colors.blueAccent,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {},
                child: Image.asset(
                  'images/harry.jpg',
                  fit: BoxFit.cover,
                  width: 70,
                  height: 70,
                ),
              ),
              const SizedBox(width: 20),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "What's on your mind?",
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    suffixIcon: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.image),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 210, 205, 205),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FilledButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 245, 239, 177)),
                  foregroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 255, 204, 0)),
                ),
                onPressed: () {},
                child: const Row(
                  children: [
                    Icon(MaterialCommunityIcons.video_4k_box),
                    SizedBox(width: 8),
                    Text("Reels"),
                  ],
                ),
              ),
              FilledButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 199, 243, 185)),
                  foregroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 78, 186, 70)),
                ),
                onPressed: () {},
                child: const Row(
                  children: [
                    Icon(Icons.video_camera_back),
                    SizedBox(width: 8),
                    Text('room'),
                  ],
                ),
              ),
              FilledButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 237, 165, 147)),
                  foregroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 246, 65, 55)),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.group),
                    SizedBox(width: 8),
                    Text('Group'),
                  ],
                ),
              ),
              FilledButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 169, 226, 245)),
                  foregroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 0, 119, 255)),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.video_camera_front_sharp),
                    SizedBox(width: 8),
                    Text('Live'),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Stack(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40)),
                      child: Image.asset('images/gumball.jpg',
                          width: 90, height: 90)),
                  Positioned(
                    bottom: 1,
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: FloatingActionButton(
                        onPressed: () {},
                        child: const Icon(Icons.add),
                      ),
                    ),
                  )
                ],
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child:
                        Image.asset('images/abiy.jpg', width: 90, height: 90),
                  ),
                  Positioned(
                    bottom: 1,
                    right: 3,
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: FloatingActionButton(
                        onPressed: () {},
                        child: const Icon(Icons.add, size: 20),
                      ),
                    ),
                  )
                ],
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: Image.asset('images/harry.jpg',
                          width: 90, height: 90)),
                  Positioned(
                    bottom: 1,
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: FloatingActionButton(
                        onPressed: () {},
                        child: const Icon(Icons.add),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          // Posts Section
          Expanded(
            child: ListView.builder(
              itemCount: imagePaths.length,
              itemBuilder: (context, index) {
                return Card(
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          imagePaths[index],
                          width: double.infinity,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Post ${index + 1}',
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                            "This is an amazing post for post ${index + 1}"),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: () {}, child: const Text("Like")),
                          TextButton(
                              onPressed: () {}, child: const Text("Comment")),
                          TextButton(
                              onPressed: () {}, child: const Text("Share")),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
