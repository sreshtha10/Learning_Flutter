import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home()
  ));
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            level++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30,0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/asset1.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Sreshtha Mehrotra',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2,
                fontWeight: FontWeight.bold,
                fontSize: 28.0

              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '$level',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0

              ),
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Icon(
                  Icons.email_outlined,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  'sreshtha.mehrotra@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1
                  ),
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}

