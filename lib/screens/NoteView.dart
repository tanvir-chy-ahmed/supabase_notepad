import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_todo_01/screens/addnote.dart';

class Noteview extends StatefulWidget {
  const Noteview({super.key});

  @override
  State<Noteview> createState() => _NoteviewState();
}

class _NoteviewState extends State<Noteview> {
  final List<String> titles = [
    'Tile 1',
    'Tile 2',
    'Tile 3',
    'Tile 4',
    'Tile 5',
    'Tile 6',
    'Tile 7',
    'Tile 8',
  ];

  final List<Color> colors = [
    Color(0xFFFF9E9E),
    Color(0xFFFD99FF),
    Color(0xFF91F48F),
    Color(0xFFFFF599),
    Color(0xFF9EFFFF),
    Color(0xFFB69CFF),
  ];

  Stream<List<Map<String, dynamic>>> getNotesStream() {
    return Supabase.instance.client
        .from('notes')
        .stream(primaryKey: ['id'])
        .order('id');
  }

  @override
  Widget build(BuildContext context) {
    final supabase = Supabase.instance.client;

    //colors[index % colors.length],
    return Scaffold(
      backgroundColor: Color(0xFF252525),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  AddNote(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                    const begin = Offset(1.0, 0.0);
                    const end = Offset.zero;
                    const curve = Curves.ease;

                    final tween = Tween(
                      begin: begin,
                      end: end,
                    ).chain(CurveTween(curve: curve));
                    final offsetAnimation = animation.drive(tween);

                    return SlideTransition(
                      position: offsetAnimation,
                      child: child,
                    );
                  },
            ),
          );
        },
        child: Icon(Icons.edit),
      ),

      body: StreamBuilder<List<Map<String, dynamic>>>(
        stream: supabase
            .from('notes')
            .stream(primaryKey: ['id'])
            .order('id', ascending: false),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("${snapshot.error}"));
          }

          final notes = snapshot.data ?? [];
          if (notes.isEmpty) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/home_onb.png',
                      height: 250,
                      width: 250,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "No notes found",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            );

          }

          return RefreshIndicator(
            onRefresh: () async {
              setState(() {});
            },
            child: ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, index) {
                final note = notes[index];
                return ListTile(
                  title: Text(
                    note['title'] ?? 'No title',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    note['desc'] ?? '',
                    style: TextStyle(color: Colors.white70),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
