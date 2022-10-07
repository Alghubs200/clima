import 'package:geolocator/geolocator.dart';
import 'package:clima/services/location.dart';

class Location {
  double latitude;
  double longitude;
  Future<void> getCurrentLoction() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
