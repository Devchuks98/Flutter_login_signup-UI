import 'package:flutter/material.dart';
import 'package:project3/main.dart';
import 'package:project3/styles/buttons.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FirstMonie'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 500,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    'https://appinventiv.com/wp-content/uploads/sites/1/2020/10/offline-first-app.gif',
                  ),
                  fit: BoxFit.cover),
            ),
          ),

          const SizedBox(height: 20),
          // bank slogan
          const Text(
            '   With First Bank,',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),

          //...continuation of slogan
          const Text(
            '  We Keep Our Word.',
            style: TextStyle(fontSize: 50, color: Colors.blue),
          ),

          const SizedBox(height: 40),

          // Bank with us now button
          Center(
            child: ElevatedButton(
              style: buttonPrimary,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              },
              child: const Text(
                'BANK WITH US NOW!',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
