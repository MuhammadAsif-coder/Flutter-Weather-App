class WeatherData {
  final DateTime date;
  final String name;
  final double temp;
  final String main;
  final int humidity;
  final double windspeed;
  final DateTime sunrise;
  final DateTime sunset;

  final String icon;
  WeatherData(
      {this.date,
      this.humidity,
      this.sunrise,
      this.sunset,
      this.name,
      this.temp,
      this.windspeed,
      this.main,
      this.icon});

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    return WeatherData(
      date: new DateTime.fromMillisecondsSinceEpoch(json['dt'] * 1000,
          isUtc: false),
      name: json['name'],
      temp: json['main']['temp'].toDouble(),
      main: json['weather'][0]['main'],
      humidity: json['main']['humidity'].toInt(),
      windspeed: json['wind']['speed'].toDouble(),
      sunrise: new DateTime.fromMillisecondsSinceEpoch(
          json['sys']['sunrise'] * 1000,
          isUtc: false),
      sunset: new DateTime.fromMillisecondsSinceEpoch(
          json['sys']['sunset'] * 1000,
          isUtc: false),
      icon: json['weather'][0]['icon'],
    );
  }
}
