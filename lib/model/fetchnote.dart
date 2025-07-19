import 'package:supabase_flutter/supabase_flutter.dart';

Stream<List<Map<String, dynamic>>> fetchnote() {
  return Supabase.instance.client
      .from('notes')
      .stream(primaryKey: ['id'])
      .order('id');
}
