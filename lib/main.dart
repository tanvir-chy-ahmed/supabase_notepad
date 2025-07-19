import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_todo_01/credentials/ANNON_KEY.dart';
import 'package:supabase_todo_01/screens/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: URL,
    anonKey: ANNONKEY
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
        primarySwatch: Colors.teal,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
