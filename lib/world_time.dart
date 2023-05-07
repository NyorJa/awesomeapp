import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location;
  String? time;
  String flag;
  String url;


  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {

    try {
      Uri uri = Uri.https('worldtimeapi.org', '/api/timezone/$url');
      print(uri);
      Response response = await get(uri);
      if(response.statusCode == 200) {
        // var jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
        // print(jsonResponse);
        Map data = jsonDecode(response.body);
        print(data);

        // get properties from data
        String datetime = data['datetime'];
        String offset = data['utc_offset'].substring(1,3);

        // create Datetime
        DateTime now = DateTime.parse(datetime);
        now = now.add(Duration(hours: int.parse(offset)));
        print(now);

        // set time property
        time = now.toString();
      }
    } catch(e) {
      print('caugth error: $e');
      time = 'could not get time data';
    }
  }
}

// WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
// instace.getTime()