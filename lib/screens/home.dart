import 'package:flutter/material.dart';

import 'Developer.dart';
import 'NoteView.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF252525),
      body: Noteview(),
      appBar: AppBar(
        backgroundColor: Color(0xFF252525),
        title: Text(
          "Notes",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.white),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DeveloperInfoPage()),
              );
            },
            icon: Icon(Icons.info_outline, color: Colors.white),
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
