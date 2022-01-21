import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  // using async in flutter
  void getData() async{
    // simulate network request for a username
    String username = await Future.delayed(const Duration(seconds: 3),(){
      return 'username';
    });

    // simulate network request to get bio of the username
    String bio =  await Future.delayed(const Duration(seconds: 2),(){
      return 'bio';
    });

    print('$username - $bio');

  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text("Choose a location"),
        centerTitle: true,
        elevation: 0,
      ),
      body:Text(""),
    );
  }
}
