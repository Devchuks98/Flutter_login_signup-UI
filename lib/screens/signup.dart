import 'package:flutter/material.dart';
import 'package:project3/styles/buttons.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FirstMobile'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(
              'https://media.istockphoto.com/id/1312423107/vector/stealing-data-concept-flat-vector-illustration-online-registration-form-login-to-social.jpg?s=612x612&w=0&k=20&c=7Trftif8xV9FCDO5B4M7JiBpZUFlXo51m5lfI6hYCog=',
              height: 300,
            ),
            const SizedBox(height: 15),
            const Text(
              'SIGN UP',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 10),

            // First name
            Container(
              margin: const EdgeInsets.fromLTRB(40, 1, 40, 1),
              child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'First Name',
                ),
              ),
            ),
            const SizedBox(height: 5.0),

            // Last name
            Container(
              margin: const EdgeInsets.fromLTRB(40, 1, 40, 1),
              child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'Last Name',
                ),
              ),
            ),
            const SizedBox(height: 5.0),

            // Email
            Container(
              margin: const EdgeInsets.fromLTRB(40, 1, 40, 1),
              child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.blue,
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            const SizedBox(height: 5.0),

            // Password
            Container(
              margin: const EdgeInsets.fromLTRB(40, 1, 40, 1),
              child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.blue,
                  ),
                  suffixIcon:
                      Icon(Icons.visibility_rounded, color: Colors.grey),
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            const SizedBox(height: 5.0),

            // Confirm password
            Container(
              margin: const EdgeInsets.fromLTRB(40, 1, 40, 1),
              child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.blue,
                  ),
                  suffixIcon:
                      Icon(Icons.visibility_rounded, color: Colors.grey),
                  border: OutlineInputBorder(),
                  labelText: 'Confirm Password',
                ),
              ),
            ),

            const SizedBox(height: 25.0),

            // Sign up elevated button
            ElevatedButton(
              style: buttonPrimary,
              child: const Text(
                'SIGN UP',
                style: TextStyle(fontSize: 15),
              ),
              onPressed: () {},
            ),

            const SizedBox(height: 15),

            // Row section
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account?',
                  style: TextStyle(fontSize: 15),
                ),
                TextButton(
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
