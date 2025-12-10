import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User Profile')),
      body: Stack(
        children: [
          /// الجزء العلوي (البروفايل)
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.blueAccent,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('image/a.jpg'),
                ),
                SizedBox(height: 10),
                Text(
                  'john deo',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                Text(
                  'software developer',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
              ],
            ),
          ),

          /// العناصر اللي تحت الهيدر
          Positioned(
            top: 200,   // << حدد المسافة من فوق
            left: 0,
            right: 0,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Email:'),
                      Text('john.doe@example.com'),
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Phone:'),
                      Text('+1234567890'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}