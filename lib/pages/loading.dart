import 'package:flutter/material.dart';
import 'package:first_flutter_app/services/worldTime.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  Map? data;

  Future<void> setUpWorldTime(WorldTime instance) async {
    await instance.getData();
    Navigator.pushReplacementNamed(context,'/home',arguments: {
      'location':instance.location,
      'time':instance.time,
      'flag':instance.flag,
      'isDayTime':instance.isDayTime
    });

  }

  @override
  void initState() {
    super.initState();
    setUpWorldTime(WorldTime(location: 'Berlin', flag: 'germany.png' ,url: "Europe/Berlin"));
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
