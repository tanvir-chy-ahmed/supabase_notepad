import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_todo_01/screens/addnote.dart';
import 'package:supabase_todo_01/screens/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: "https://fdxutlrhruvukcfohsnu.supabase.co",
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZkeHV0bHJocnV2dWtjZm9oc251Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTI4NDgzMzcsImV4cCI6MjA2ODQyNDMzN30.fkvyeqzeJtlzsmMGxUaAeNqYt1BK5Jai9F8xxcXgABw",
  );
  runApp(MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        darkTheme: ThemeData(
          brightness: Brightness.dark,
              primarySwatch: Colors.teal
        ),
        debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
