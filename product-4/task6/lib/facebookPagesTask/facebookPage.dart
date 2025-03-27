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

  // Static data for posts
  final List<Map<String, String>> posts = [
    {
      'profileImage': 'images/harry.jpg',
      'userName': 'Deven Mestry',
      'postImage': 'images/nike.jpg',
      'caption': 'Check out my new shoes!',
    },
    {
      'profileImage': 'images/house4.jpg',
      'userName': 'John Doe',
      'postImage': 'images/home2.jpg',
      'caption': 'Home sweet home!',
    },
    {
      'profileImage': 'images/abiy.jpg',
      'userName': 'Jane Smith',
      'postImage': 'images/jordan.jpg',
      'caption': 'Loving these kicks!',
    },
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
                    Text('Room'),
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
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage('images/gumball.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 1,
                    right: 3,
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: FloatingActionButton(
                        onPressed: () {},
                        child: const Icon(Icons.add),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    width: 95,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage(
                          'images/abiy.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
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
                    width: 95,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: AssetImage('images/harry.jpg')),
                    ),
                  ),
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
          Expanded(
            child: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return Card(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Profile section
                        Row(
                          children: [
                            ClipOval(
                              child: Image.asset(
                                posts[index]['profileImage']!,
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              posts[index]['userName']!,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                        Text(
                          posts[index]['caption']!,
                          style: const TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(height: 10),
                        Image.asset(
                          posts[index]['postImage']!,
                          fit: BoxFit.cover,
                        ),

                        FloatingActionButton(
                          onPressed: () {},
                          child: const Row(
                            children: [
                              Icon(Icons.thumbs_up_down),
                              SizedBox(
                                width: 40,
                              ),
                              Icon(Icons.comment),
                              SizedBox(
                                width: 40,
                              ),
                              Icon(Icons.share),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
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
