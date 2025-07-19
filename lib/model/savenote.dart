import 'package:flutter/cupertino.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

saveNote(
  TextEditingController titleCtrl,
  TextEditingController descCtrl,
) async {
  await Supabase.instance.client.from('notes').insert({
    "title": titleCtrl.text.trim(),
    "desc": descCtrl.text.trim(),
  });
}
