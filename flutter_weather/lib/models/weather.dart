class Weather{

  final String main;
  final double temp;
  final double feelsLike;
  final double low;
  final double high;
  final String description;
  final double pression;
  final double humidity;
  final double wind;
  final int sunrise;
  final int sunset;


  Weather({required this.temp,required this.feelsLike,required this.low,required this.high,required this.description, required this.pression,required this.humidity,required this.wind,required this.sunrise,required this.sunset,required this.main});

  factory Weather.fromJson(Map<String, dynamic> json){
    return Weather(
      main: json['weather'][0]['main'],
      temp: json['main']['temp'].toDouble(),
      feelsLike: json['main']['feels_like'].toDouble(),
      low: json['main']['temp_min'].toDouble(),
      high: json['main']['temp_max'].toDouble(),
      pression:json['main']['pressure'].toDouble(),
      humidity:json['main']['humidity'].toDouble(),
      description: json['weather'][0]['description'],
      wind: json['wind']['speed'].toDouble(),
      sunrise: json['sys']['sunrise'].toInt(),
      sunset: json['sys']['sunset'].toInt()
    );
  }
}