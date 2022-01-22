import 'package:http/http.dart';
import 'dart:convert';


class WorldTime{
  String location; // location name for the UI
  late String time; // time in that location
  String flag; // url to an asset flag icon.
  String url; // base-url for the api.

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getData() async{
    try{
      Response response = await get(Uri.parse("http://worldtimeapi.org/api/timezone/$url"));
      Map data = jsonDecode(response.body);
      // get properties from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'];
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset.substring(1,3))));

      time = now.toString();
    }
    catch(e){
      time = "Not a valid url  ";
      print('caught error:$e');
    }
  }
}
