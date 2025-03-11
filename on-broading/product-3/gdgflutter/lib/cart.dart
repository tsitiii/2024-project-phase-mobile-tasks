import 'package:flutter/material.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({super.key});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 0, top: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                  width: 250,
                  height: 250,
                  child: Image(image: AssetImage('images/burger.jpg'))),
              const SizedBox(
                height: 80,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(80), // Rounded top left corner
                    topRight: Radius.circular(0), // Flat top right corner
                    bottomLeft: Radius.circular(0), // Flat bottom left corner
                    bottomRight: Radius.circular(
                        15), // You can keep this if you want the bottom right rounded too
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue),
                                onPressed: () {},
                                child: const Text(
                                  "4.8",
                                  style: TextStyle(color: Colors.white),
                                )),
                            const Text(
                              "20",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 177, 177, 4),
                                  fontWeight: FontWeight.bold),
                            )
                          ]),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          Text(
                            "Beef Burger",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Expanded(
                            child: Text(
                                "In Flutter, if you want to provide a background color along with other decorations, you need to use the decoration property with a BoxDecoration",
                                style: TextStyle()),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          Text(
                            "Add offer",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 100,
                            height: 100,
                            child: Image(image: AssetImage('images/straw.jpg')),
                          ),
                          SizedBox(
                              width: 100,
                              height: 100,
                              child:
                                  Image(image: AssetImage('images/mango.jpg'))),
                          SizedBox(
                              width: 100,
                              height: 100,
                              child:
                                  Image(image: AssetImage('images/fruit.jpg')))
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue),
                            onPressed: () {},
                            child: const Text(
                              "Add to cart",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.white),
                            )),
                      ),
                      const SizedBox(
                        height: 80,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
