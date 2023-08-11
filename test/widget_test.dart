
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyTextField(),
    );
  }
}

class MyTextField extends StatefulWidget {
  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  String enteredText = '';
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _controller,
              onChanged: (text) {
                setState(() {
                  enteredText = text;
                });
              },
              decoration: InputDecoration(
                labelText: 'Label Text',
                hintText: 'Hint Text',
                prefixIcon: Icon(Icons.text_fields),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    _controller.clear();
                  },
                ),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                ),
              ),
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              autocorrect: true,
              autofocus: false,
              obscureText: false,
              maxLines: 1,
              maxLength: 50,
              maxLengthEnforcement: MaxLengthEnforcement.enforced,
              enabled: true,
              cursorColor: Colors.red,
              cursorWidth: 2.0,
              cursorRadius: Radius.circular(16),
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            SizedBox(height: 20),
            Text(
              'Entered Text: $enteredText',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
