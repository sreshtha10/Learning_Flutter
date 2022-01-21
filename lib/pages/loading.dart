import 'package:flutter/material.dart';
import 'package:first_flutter_app/services/worldTime.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = 'loading';

  Future<void> setUpWorldTime() async {
    WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png' ,url: "Europe/Berlin");
    await instance.getData();
    setState(() {
      time = instance.time.substring(0,instance.time.length-1);
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
      body: Padding(
          padding: const EdgeInsets.all(50),
          child: Text(time),
      ),
    );
  }
}
