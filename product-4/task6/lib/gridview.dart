import 'package:flutter/material.dart';

class GridVieww extends StatefulWidget {
  const GridVieww({super.key});

  @override
  State<GridVieww> createState() => _GridViewwState();
}

class _GridViewwState extends State<GridVieww> {
  final TextEditingController searchController = TextEditingController();
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
        title: const Text('My Flutter App'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(55.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.zero,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: TextField(
                    controller: searchController,
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      hintText: 'Search...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Photos',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 23),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text(
                "November",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 6,
              mainAxisSpacing: 6,
              children: imagePaths.map((path) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(path, fit: BoxFit.cover),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
