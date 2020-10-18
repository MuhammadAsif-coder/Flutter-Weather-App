import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart' hide LocationAccuracy;


class LocationPage extends StatefulWidget {
  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
  Position _currentPosition;
  String _currentAddress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Location"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
           
            if (_currentPosition != null) Text("${_currentAddress}\n"),
            RaisedButton(
              child: Text("Get Location"),
              onPressed: () {
                _getCurrentLocation();
              },
            ),
          ],
        ),
      ),
    );
  }

  _getCurrentLocation() {
    geolocator.getCurrentPosition().then((Position position) {
      setState(() {
        _currentPosition = position;
        _currentAddress =
            "Lat: ${_currentPosition.latitude}, Lng: ${_currentPosition.longitude}\n\n";
        _getAddressFromLatLng();
      });
    }).catchError((e) {
      print(e);
    });
  }

  _getAddressFromLatLng() async {
    try {
      
      List<Placemark> p = await geolocator.placemarkFromCoordinates(
          _currentPosition.latitude, _currentPosition.longitude);
      Placemark place = p[0];
      setState(() {
        _currentAddress = _currentAddress +
            "${place.subLocality}, " +
            "${place.locality}\n\n" +
            "${place.administrativeArea}, ${place.country} - ${place.postalCode}";
      });
    } catch (e) {
      print(e);
    }
  }
}
