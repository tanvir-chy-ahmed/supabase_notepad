import 'package:flutter/material.dart';

import 'Changelog.dart';

class DeveloperInfoPage extends StatefulWidget {
  const DeveloperInfoPage({super.key});

  @override
  State<DeveloperInfoPage> createState() => _DeveloperInfoPageState();
}

class _DeveloperInfoPageState extends State<DeveloperInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("About Developer"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChangeLogPage()),
              );
            },
            icon: Icon(Icons.tips_and_updates_outlined),
          ),
        ],
        backgroundColor: Colors.grey[900],
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey[800],
                backgroundImage: AssetImage(
                  'assets/coding.png',
                ), // Or use NetworkImage
              ),
            ),
            const SizedBox(height: 20),

            const Center(
              child: Text(
                "Tanvir Ahmed (Chy)",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Center(
              child: Text(
                "💻 Native / Hybrid App Developer \n ☕ Coffee Lover",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[400],
                  height: 1.6,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),

            ),

            const SizedBox(height: 30),
            _infoTile("📧 Email", "tanvirchy269@gmail.com"),
            _infoTile("🌍 Website", "https://github.com/tanvir-chy-ahmed"),
            _infoTile("💬 Telegram", "@Taxor_E"),
            _infoTile("📱 App Version", "v1.2.0"),
            _infoTile("🚀 Built with", "Flutter & Dart"),

            const Spacer(),

            Center(
              child: Text(
                "Thank you for using this app ❤️",
                style: TextStyle(fontSize: 14, color: Colors.grey[500]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _infoTile(String title, String value) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
          const Spacer(),
          Text(value, style: const TextStyle(color: Colors.grey, fontSize: 14)),
        ],
      ),
    );
  }
}
