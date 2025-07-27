import 'package:flutter/material.dart';
import '../model/updatenote.dart';

class DetailsScreen extends StatefulWidget {
  final Map<String, dynamic> notes;

  const DetailsScreen({super.key, required this.notes});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  TextEditingController titleCtrl = TextEditingController();
  TextEditingController descCtrl = TextEditingController();
  final FocusNode titlenode = FocusNode();

  @override
  void initState() {
    super.initState();
    titleCtrl.text = widget.notes['title'];
    descCtrl.text = widget.notes['desc'];

  }

  @override
  Widget build(BuildContext context) {
    // final note = notes[index];

    return Scaffold(
      backgroundColor: Color(0xFF252525),
      resizeToAvoidBottomInset: true, //bottom txt field
      appBar: AppBar(
        backgroundColor: Color(0xFF252525),
        leading: IconButton(
          onPressed: () async {
            Navigator.pop(context);
            updateNote(noteId: widget.notes['id'], titleCtrl: titleCtrl, descCtrl: descCtrl);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {
              //Save Logics
              updateNote(
                noteId: widget.notes['id'],
                titleCtrl: titleCtrl,
                descCtrl: descCtrl,
              );
              Navigator.pop(context);
            },
            icon: Icon(Icons.save),
            color: Colors.white,
          ),
        ],
      ),

      body: WillPopScope(
        onWillPop: ()async{
          updateNote(noteId:widget.notes['id'] , titleCtrl: titleCtrl, descCtrl: descCtrl);
          return true;
        },
        child: Column(
          children: [
            //Title
            TextField(
              controller: titleCtrl,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 0, color: Colors.transparent),
                ),
                hintText: "",
                hintStyle: TextStyle(
                  color: Colors.white70,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0.5,
                ),
                filled: true,
                fillColor: Colors.transparent,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
              ),
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textInputAction: TextInputAction.search,
              keyboardType: TextInputType.text,
              autocorrect: true,
              enableSuggestions: true,
              cursorColor: Colors.white,
              onChanged: (value) {
                setState(() {}); // Update suffix icon
                // Add debounce logic if needed
              },
            ),

            SizedBox(height: 10),
            Expanded(
              child: TextField(
                textAlignVertical: TextAlignVertical.top,
                expands: true,
                maxLines: null,
                controller: descCtrl,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 0, color: Colors.transparent),
                  ),
                  hintText: 'Type Something...',
                  hintStyle: TextStyle(
                    color: Colors.white70,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 0.5,
                  ),
                  hintTextDirection: TextDirection.ltr,
                  filled: true,
                  fillColor: Colors.transparent,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  alignLabelWithHint: true,
                ),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),

                textInputAction: TextInputAction.search,
                keyboardType: TextInputType.multiline,
                autocorrect: true,
                enableSuggestions: true,
                cursorColor: Colors.white,
                onChanged: (value) {
                  setState(() {}); // Update suffix icon
                  // Add debounce logic if needed
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
