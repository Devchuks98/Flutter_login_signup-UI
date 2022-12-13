import 'dart:html';

import 'package:flutter/material.dart';
import 'package:project3/screens/signup.dart';
import 'package:project3/styles/buttons.dart';

class FirstMobile extends StatefulWidget {
  const FirstMobile({super.key});

  @override
  State<FirstMobile> createState() => _FirstMobileState();
}

class _FirstMobileState extends State<FirstMobile> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            'https://cdn.dribbble.com/users/1830537/screenshots/6493112/app_1.gif',
            height: 300,
            width: 5000,
          ),

          const SizedBox(height: 10),
          //Login text
          Container(
            margin: const EdgeInsets.all(10),
            child: const Text(
              'LOGIN',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Email TextField
          Container(
            margin: const EdgeInsets.fromLTRB(40, 1, 40, 1),
            child: const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.blueAccent,
                ),
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
          ),

          const SizedBox(height: 10.0),
          // password TextField
          Container(
            margin: const EdgeInsets.fromLTRB(40, 1, 40, 1),
            child: const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.blueAccent,
                ),
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
              maxLength: 12,
            ),
          ),

          // Elevated button for user login
          ElevatedButton(
            style: buttonPrimary,
            onPressed: () {},
            child: const Text(
              'LOGIN',
              style: TextStyle(fontSize: 15),
            ),
          ),

          const SizedBox(height: 15),

          // OR option text
          const Text('OR'),

          const SizedBox(height: 15),

          // Log in with text
          const Text(
            'Log in with',
            style: TextStyle(fontSize: 15),
          ),

          const SizedBox(height: 20),

          // Login icons through **Google, Apple and Facebook**
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(Icons.mail_outline, color: Colors.redAccent, size: 30),
              Icon(Icons.facebook, color: Colors.blue, size: 30),
              Icon(Icons.whatsapp_rounded, color: Colors.green, size: 30),
            ],
          ),

          const SizedBox(height: 20),
          // Alternative if user doesn't meet requirement above
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Don\'t have an account?',
                style: TextStyle(fontSize: 15),
              ),
              TextButton(
                child: const Text('Register Now'),
                // Within the `FirstRoute` widget
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUp()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
