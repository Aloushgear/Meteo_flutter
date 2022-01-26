/*import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_weather/models/weather.dart';
//import 'package:flutter_weather/navnav.dart';


class CurrentweatherPage extends StatefulWidget{
  @override
  _CurrentweatherPageState createState() => _CurrentweatherPageState();
}

class _CurrentweatherPageState extends State<CurrentweatherPage> {  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Center(
        child:FutureBuilder(
          builder:(context, snapshot) {
            if (snapshot != null){
              Weather? _weather =snapshot.data as Weather?;
              if (_weather == null){
                return Text("Patientez");
              }
              else {
                return weatherBox(_weather);
              }
            }
            else{
              return CircularProgressIndicator();
            }
          },
          future: getCurrentWeather(),
        ),
      ),
    );
  }

  Widget weatherBox(Weather _weather) {
  
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Container(
          margin: const EdgeInsets.all(10.0),
          child: 
          Text("${_weather.temp}°C",

            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 55),
          )
        ),
        Container(
          margin: const EdgeInsets.all(5.0),
          child: Text("${_weather.description}")
        ),
        Container(
          margin: const EdgeInsets.all(5.0),
          child: Text("Feels:${_weather.feelsLike}°C")
        ),
        Container(
          margin: const EdgeInsets.all(5.0),
          child: Text("Pressure:${_weather.pression}°hPa")
        ),
        Container(
          margin: const EdgeInsets.all(5.0),
          child: Text("Humidity:${_weather.humidity}%")
        ),
        Container(
          margin: const EdgeInsets.all(5.0),
          child: Text("H:${_weather.high}°C L:${_weather.low}°C")
        ),
    ]
  
  );  
}



  Future getCurrentWeather( ) async {
    Weather weather;
    String city = "London";
    String apikey ="f22d6da9dac96102fd7c57b6a813b2b9";
    var url = "https://api.openweathermap.org/data/2.5/weather?q=$city&units=metric&lang=fr&cnt=8&appid=$apikey";
    final response =await http.get(url);

    if (response.statusCode == 200){
      weather = Weather.fromJson(jsonDecode(response.body));
    }
    else {
      // Nice
    }
    return Weather.fromJson(jsonDecode(response.body));

  }
}*/
