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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Text('Hello'),
              Text('World')
            ],
          ),
          Container(
           padding: EdgeInsets.all(20),
           color: Colors.cyan,
           child: Text("One"),
          ),
          Container(
            padding: EdgeInsets.all(25),
            color: Colors.pinkAccent,
            child: Text("Two"),
          ),
          Container(
            padding: EdgeInsets.all(40),
            child: Text("Three"),
            color: Colors.amber,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text('Click'),
        onPressed: null,
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
