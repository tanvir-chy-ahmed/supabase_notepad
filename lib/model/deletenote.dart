import 'package:supabase_flutter/supabase_flutter.dart';

Future deleteNote({required int id}) async {
  await Supabase.instance.client.from('notes').delete().eq('id', id);
}
