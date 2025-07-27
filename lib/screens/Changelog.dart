import 'package:flutter/material.dart';

class ChangeLogPage extends StatefulWidget {
  const ChangeLogPage({super.key});

  @override
  State<ChangeLogPage> createState() => _ChangeLogPageState();
}

class _ChangeLogPageState extends State<ChangeLogPage> {
  final List<Map<String, dynamic>> _changelog = [
    {
      "version": "1.2.0",
      "date": "27 July 2025",
      "changes": [
        "🛠 Improved performance on note saving.",
        "🎨 Updated UI layout for better spacing.",
        "🐞 Fixed crash when deleting notes quickly.",
      ]
    },
    {
      "version": "1.1.0",
      "date": "15 July 2025",
      "changes": [
        "🌟 Added long-press delete option.",
        "📌 Pinned notes now available.",
      ]
    },
    {
      "version": "1.0.0",
      "date": "01 July 2025",
      "changes": [
        "🚀 Initial release with basic CRUD features.",
        "📝 Save and view notes.",
        "🔍 Search functionality added.",
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Developer Changelog"),
        backgroundColor: Colors.grey[900],
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: _changelog.length,
        itemBuilder: (context, index) {
          final item = _changelog[index];
          return Card(
            color: Colors.grey[850],
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Version ${item["version"]}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    item["date"],
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ...List.generate(item["changes"].length, (i) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("• ", style: TextStyle(color: Colors.white, fontSize: 16)),
                          Expanded(
                            child: Text(
                              item["changes"][i],
                              style: const TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    );
                  })
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
