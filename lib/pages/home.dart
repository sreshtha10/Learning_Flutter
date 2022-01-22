import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late Map? data;

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context)?.settings.arguments as Map?;

    String bgImage = 'day.png';
    if(data?['isDayTime'] != null){
      bgImage = data!['isDayTime'] ? 'day.png' : 'night.png';
    }

    print(bgImage);

    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$bgImage'),
              fit: BoxFit.cover
            )
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120,0,0),
            child: Column(
              children: [
                ElevatedButton.icon(
                    onPressed:() async {
                     dynamic result = await Navigator.pushNamed(context, '/location');
                     setState(() {
                       data?['time'] = result['time'];
                       data?['location'] = result['location'];
                       data?['isDayTime'] = result['isDayTime'];
                       data?['flag'] = result['flag'];
                     });
                    } ,
                    icon: const Icon(Icons.edit_location),
                    label: Text(
                      'Edit Location',
                      style: TextStyle(
                        color: Colors.grey[300]
                      ),

                    )
                ),
                const SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data?['location'] ?? "",
                      style: const TextStyle(
                        fontSize: 20.0,
                        letterSpacing: 2.0,
                        color: Colors.white
                    ),)
                  ],
                ),
                const SizedBox(height: 20,),
                Text(
                  data?['time'] ?? "",
                  style: const TextStyle(
                    fontSize: 66.0,
                    color: Colors.white
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
