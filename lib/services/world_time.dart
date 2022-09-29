import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class WorldTime {

  late String location; // location name for UI.
  late String time; // time in that location.
  late String flag; // URL to an asset flag icon.
  late String url; // location endpoint url.

  static const String host = 'worldtimeapi.org';

  WorldTime({ required this.location, required this.flag, required this.url });

  Future<void> getTime() async {
    // Make request.
    http.Response response = await http.get(Uri.http(host, '/api/timezone/$url'));
    Map data = convert.jsonDecode(response.body);

    // Get data props.
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);

    // Create datetime object.
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));

    time = now.toString();
  }
}