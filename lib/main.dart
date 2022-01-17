import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home()
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('my first app'),
        centerTitle: true,
        backgroundColor: Colors.red[600],

      ),
      body: Center(
        child: Image(
          image: AssetImage('assets/download.jpg'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text('Click'),
        onPressed: null,
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
