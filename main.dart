import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _showMessage = false;

  void _showInfo() {
    setState(() {
      _showMessage = true;
    });

    Future.delayed(Duration(seconds: 4), () {
      setState(() {
        _showMessage = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Malumot olishni hoxlasang tugmani bos!!"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _showInfo,
                child: Text("Bos meni"),
              ),
              SizedBox(height: 20),
              Visibility(
                visible: _showMessage,
                child: Text(
                  "Sen to'g'ri yo'ldasan!",
                  style: TextStyle(fontSize: 16, color: Colors.red),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
