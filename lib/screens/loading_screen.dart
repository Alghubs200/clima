import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
    print('This line of code gets trigerred');
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLoction();
    print(location.latitude);
    print(location.longitude);
  }

  void getData() async {
    Response response = await http.get(Uri.parse(
        'http://api.openweathermap.org/data/2.5/forecast?id=524901&appid=61596c11c805a0e37c2894b5aeb6d1c8'));

    print(response.statusCode);
  }

  @override
  Widget build(BuildContext context) {
    getData();

    return Scaffold();
  }
}
