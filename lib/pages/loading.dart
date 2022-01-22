import 'package:flutter/material.dart';
import 'package:first_flutter_app/services/worldTime.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


  Future<void> setUpWorldTime() async {
    WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png' ,url: "Europe/Berlin");
    await instance.getData();
    Navigator.pushReplacementNamed(context,'/home',arguments: {
      'location':instance.location,
      'time':instance.time,
      'flag':instance.flag
    });

  }

  @override
  void initState() {
    super.initState();
    setUpWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
          padding: EdgeInsets.all(50),
          child: Text('loading'),
      ),
    );
  }
}
