import 'package:flutter/material.dart';

import 'cart.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/login.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding:
              const EdgeInsets.only(left: 10, top: 300, right: 10, bottom: 70),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 10),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "WelCome  my PPl! 🙌🏻🙌🏻",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(labelText: "Name: "),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Your fav homo sapiens: ",
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            labelText: "Fav language..  "),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {}
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddToCart()),
                          );
                        },
                        child: const Text("signupppp"),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
