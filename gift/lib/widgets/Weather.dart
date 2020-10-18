import 'package:flutter/material.dart';
import 'package:gift/Models/WeatherData.dart';
import 'package:intl/intl.dart';

class Weather extends StatelessWidget {
  final WeatherData weather;
  Weather({Key key, @required this.weather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(weather.name,
                style: new TextStyle(color: Colors.white, fontSize: 25.0)),
            SizedBox(
              width: 20,
            ),
            Text('${((weather.temp) - 273).toStringAsFixed(2)}°C',
                style: new TextStyle(color: Colors.white)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(weather.main,
                style: new TextStyle(color: Colors.white, fontSize: 30.0)),
            SizedBox(
              width: 10,
            ),
            Image.network(
                'https://openweathermap.org/img/w/${weather.icon}.png'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(DateFormat.MMMMEEEEd().format(weather.date),
                style: TextStyle(color: Colors.white)),
            SizedBox(
              width: 20,
            ),
            Text(DateFormat.Hms().format(weather.date),
                style: TextStyle(color: Colors.white)),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('SunRise :${DateFormat.Hm().format(weather.sunrise)} AM',
                style: TextStyle(color: Colors.white)),
            SizedBox(
              width: 20,
            ),
            Text('SunSet :${DateFormat.Hm().format(weather.sunset)} PM',
                style: TextStyle(color: Colors.white)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Humidity :${weather.humidity.toString()}',
                style: TextStyle(color: Colors.white)),
            SizedBox(
              width: 10,
            ),
            Text('WindSpeed :${weather.windspeed.toString()}',
                style: TextStyle(color: Colors.white)),
          ],
        ),
      ],
    );
  }
}
