import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:source_app/modal.dart';

void main() => runApp(MaterialApp(
  home: BottomsheetModal(),
));

class BottomsheetModal extends StatefulWidget {
  const BottomsheetModal({Key? key}) : super(key: key);

  @override
  _BottomsheetModalState createState() => _BottomsheetModalState();
}

class _BottomsheetModalState extends State<BottomsheetModal> {
IconData checkbox = Icons.check_box_outline_blank;
void checkboxpressed() {
  setState(() {
    checkbox = Icons.check_box;
  });
}
  Modal modal = new Modal();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal.shade100,
        body: Center(
            child: Padding(
              padding: const EdgeInsets.all(110.0),
              child: MaterialButton(
                padding: EdgeInsets.all(15),
                onPressed: () => modal.mainBottomSheet(context),
                child: Text('مرتب سازی بر اساس',
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 20,
                ),),
                color: Colors.white,
              ),
            ),
          ),
        );
  }
}
