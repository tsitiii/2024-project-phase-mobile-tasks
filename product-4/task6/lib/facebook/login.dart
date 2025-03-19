import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Welcome",
          style: TextStyle(
            fontSize: 23,
            color: Color.fromARGB(255, 81, 233, 233),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Sign In",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
                "loreerayguuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuubzh,,,,,,,,,,,,svyaerguvkb hfsvzfvsjjjjjjjjjfddddddddddddgesw"),
            const SizedBox(height: 20),
            const Text(
              "Email",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.blue[50], //background color
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.blue, // Blue border when focused
                    width: 2,
                  ),
                ),
                label: const Text("Enter your email"),
                labelStyle: const TextStyle(
                    color:
                        Color.fromARGB(255, 82, 152, 227)), // Dark blue label
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Password",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.blue[50], //background color
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.blue, // Blue border when focused
                    width: 2,
                  ),
                ),
                label: const Text("Enter your password"),
                labelStyle: const TextStyle(
                    color:
                        Color.fromARGB(255, 82, 152, 227)), // Dark blue label
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: const Size(200, 50),
                  ),
                  child: const Text(
                    "Sign In",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
            )
          ],
        )),
      ),
    );
  }
}
