import 'package:flutter/material.dart';
import 'package:first_flutter_app/services/worldTime.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

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
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: const Center(
        child: SpinKitRotatingCircle(
          color:Colors.white,
          size: 50.0,
        ),
      )
    );
  }
}
