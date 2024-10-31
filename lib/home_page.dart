import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        color: Colors.teal,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Profile Image
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  size: 60,
                  color: Colors.teal,
                ),
              ),
              const SizedBox(height: 20),

              // Name Text
              const Text(
                'Your Name',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),

              // Role Text
              const Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                  letterSpacing: 2.0,
                ),
              ),
              const SizedBox(height: 30),

              // Phone Number Card
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: ListTile(
                  leading: const Icon(Icons.phone, color: Colors.teal),
                  title: const Text(
                    '+1 234 567 890',
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),

              // Email Card
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: ListTile(
                  leading: const Icon(Icons.email, color: Colors.teal),
                  title: const Text(
                    'your.email@example.com',
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}