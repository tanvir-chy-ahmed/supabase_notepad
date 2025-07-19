import 'package:flutter/cupertino.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> updateNote({
  required int noteId, // Make sure to pass the correct ID
  required TextEditingController titleCtrl,
  required TextEditingController descCtrl,
}) async {
  await Supabase.instance.client
      .from('notes')
      .update({"title": titleCtrl.text.trim(), "desc": descCtrl.text.trim()})
      .eq('id', noteId); // 'id' should match your table's primary key
}
