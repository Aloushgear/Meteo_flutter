import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/services.dart';
import 'package:flutter_weather/models/weather.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'dart:convert';
import 'package:slimy_card/slimy_card.dart';

const _kPages = <String, IconData>{
  'Accueil': Icons.home,
  'Villes': Icons.map,
  
};

class NavView extends StatefulWidget {
  const NavView({Key? key}) : super(key: key);

  @override
  _NavViewState createState() => _NavViewState();
}

class _NavViewState extends State<NavView> {
  TabStyle _tabStyle = TabStyle.reactCircle;
  

  get padding => null;
  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('lib/assets/images/wth.jpg'),
              fit: BoxFit.fill)),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          SlimyCard(
            
            color: Colors.deepOrangeAccent,
            width: 200,
            topCardHeight: 150,
            borderRadius: 15,
            topCardWidget: Text(
              'ABIDJAN',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            bottomCardWidget:
              ElevatedButton(
                        
                    child:Image(
                            image: AssetImage(
                              "lib/assets/images/abidjan.png",
                            ),
                            fit: BoxFit.fill,
                          ) ,
                    onPressed: () {
                      
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Retourne(
                          a:'Abidjan'
                        )),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(350,350),
                      primary:Colors.deepOrangeAccent
                    ),
                  ),
           
            slimeEnabled: true,
          ),
          const Divider(),
          SlimyCard(
            color: Colors.blueAccent,
            width: 200,
            topCardHeight: 150,
            borderRadius: 15,
            topCardWidget: Text(
              'PARIS',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            bottomCardWidget:

                ElevatedButton(
                        
                    child:Image(
                          image: AssetImage("lib/assets/images/paris.png"),
                          fit: BoxFit.fill,
                        ),
                    onPressed: () {
                      
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Retourne(
                          a:'Paris'
                        )),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(350,350),
                      primary:Colors.blueAccent
                    ),
                  ),
            slimeEnabled: true,
          ),
          const Divider(),
          SlimyCard(
            color: Colors.black,
            width: 200,
            topCardHeight: 150,
            borderRadius: 15,
            topCardWidget: Text(
              'BRUXELLES',
              style: TextStyle(
                color: Colors.white,
                fontSize: 38,
                fontWeight: FontWeight.bold,
              ),
            ),
            bottomCardWidget:
               ElevatedButton(
                        
                    child:Image(
                        image: AssetImage("lib/assets/images/brux.jpg"),
                        fit: BoxFit.fill,
                      ), 
                    onPressed: () {
                      
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Retourne(
                          a:'Bruxelles'
                        )),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(350,350),
                      primary:Colors.black
                    ),
                  ),
       
            slimeEnabled: true,
          )
        ],
        
      ),
      
    )
    );
  }
}

class Retourne extends StatelessWidget {
  final String a;
  const Retourne({Key? key, required this.a}) : super(key: key);
  

  @override
  Widget generateIcon(String desc) {
    switch (desc) {
      case "Drizzle":
        DateTime now=DateTime.now();
        DateTime dt2 = DateTime.parse("2018-02-27 18:00");
        String st1=DateFormat('kk').format(dt2);
        String format = DateFormat('kk').format(now);
        var one = int.parse(st1);
        var two = int.parse(format);
        if(two>one){
          
          return Container(
          child:
           Image.asset(
            'assets/img/35.png',
            height: 180,
          ),
        );
        }
        else if(two<one){
           
           return Container(
          child:
           Image.asset(
            'assets/img/35.png',
            height: 180,
          ),
        );
        }
        return Container(
          child:Text('bye')
        );
    
      case "Rain":
        DateTime now=DateTime.now();
        DateTime dt2 = DateTime.parse("2018-02-27 18:00");
        String st1=DateFormat('kk').format(dt2);
        String format = DateFormat('kk').format(now);
        var one = int.parse(st1);
        var two = int.parse(format);
        if(two>one){
          
          return Container(
          child:
           Image.asset(
            'assets/img/2.png',
            height: 180,
          ),
        );
        }
        else if(two<one){
           return Container(
          child:
           Image.asset(
            'assets/img/5.png',
            height: 180,
          ),
        );
        }
        return Container(
          child:
          Text('bye')
        );
        case "Snow":
        DateTime now=DateTime.now();
        DateTime dt2 = DateTime.parse("2018-02-27 18:00");
        String st1=DateFormat('kk').format(dt2);
        String format = DateFormat('kk').format(now);
        var one = int.parse(st1);
        var two = int.parse(format);
        if(two>one){
          
          return Container(
          child:
           Image.asset(
            'assets/img/36.png',
            height: 180,
          ),
        );
        }
        else if(two<one){
           
           return Container(
          child:
           Image.asset(
            'assets/img/36.png',
            height: 180,
          ),
        );
        }
        return Container(
          child:Text('bye')
        );
        case "Clear":
        DateTime now=DateTime.now();
        DateTime dt2 = DateTime.parse("2018-02-27 18:00");
        String st1=DateFormat('kk').format(dt2);
        String format = DateFormat('kk').format(now);
        var one = int.parse(st1);
        var two = int.parse(format);
        if(two>one){
          
          return Container(
          child:
           Image.asset(
            'assets/img/10.png',
            height: 180,
          ),
        );
        }
        else if(two<one){
           
           return Container(
          child:
           Image.asset(
            'assets/img/26.png',
            height: 180,
          ),
        );
        }
        return Container(
          child:Text('bye')
        );
        case "Thunderstorm":
        DateTime now=DateTime.now();
        DateTime dt2 = DateTime.parse("2018-02-27 18:00");
        String st1=DateFormat('kk').format(dt2);
        String format = DateFormat('kk').format(now);
        var one = int.parse(st1);
        var two = int.parse(format);
        if(two>one){
          
          return Container(
          child:
           Image.asset(
            'assets/img/20.png',
            height: 180,
          ),
        );
        }
        else if(two<one){
           
           return Container(
          child:
           Image.asset(
            'assets/img/30.png',
            height: 180,
          ),
        );
        }
        return Container(
          child:Text('bye')
        );
      case "Clouds":
        DateTime now=DateTime.now();
        DateTime dt2 = DateTime.parse("2018-02-27 18:00");
        String st1=DateFormat('kk').format(dt2);
        String format = DateFormat('kk').format(now);
        var one = int.parse(st1);
        var two = int.parse(format);
        if(two>one){
          return Container(
          child:
           Image.asset(
            'assets/img/15.png',
            height: 180,
          ),
        );
        }
        else if(two<one){
           
           return Container(
          child:
           Image.asset(
            'assets/img/80.png',
            height: 180,
          ),
        );
        }
        return Container(
          child:Text('bye')
        );
        case "Haze":
        DateTime now=DateTime.now();
        DateTime dt2 = DateTime.parse("2018-02-27 18:00");
        String st1=DateFormat('kk').format(dt2);
        String format = DateFormat('kk').format(now);
        var one = int.parse(st1);
        var two = int.parse(format);
        if(two>one){
          
          return Container(
          child:
           Image.asset(
            'assets/img/41.png',
            height: 180,
          ),
        );
        }
        else if(two<one){
           
           return Container(
          child:
           Image.asset(
            'assets/img/4.png',
            height: 180,
          ),
        );
        }
        return Container(
          child:Text('bye')
        );
        case "Mist":
        DateTime now=DateTime.now();
        DateTime dt2 = DateTime.parse("2018-02-27 18:00");
        String st1=DateFormat('kk').format(dt2);
        String format = DateFormat('kk').format(now);
        var one = int.parse(st1);
        var two = int.parse(format);
        if(two>one){
          
          return Container(
          child:
           Image.asset(
            'assets/img/41.png',
            height: 180,
          ),
        );
        }
        else if(two<one){
           
           return Container(
          child:
           Image.asset(
            'assets/img/4.png',
            height: 180,
          ),
        );
        }
        return Container(
          child:Text('bye')
        );
        case "Smoke":
        return Container(
          child: Image.asset(
            'assets/img/40.png',
            height: 180,
          ),
        );
        case "Dust":
       DateTime now=DateTime.now();
        DateTime dt2 = DateTime.parse("2018-02-27 18:00");
        String st1=DateFormat('kk').format(dt2);
        String format = DateFormat('kk').format(now);
        var one = int.parse(st1);
        var two = int.parse(format);
        if(two>one){
          
          return Container(
          child:
           Image.asset(
            'assets/img/41.png',
            height: 180,
          ),
        );
        }
        else if(two<one){
           
           return Container(
          child:
           Image.asset(
            'assets/img/4.png',
            height: 180,
          ),
        );
        }
        return Container(
          child:Text('bye')
        );
        case "Fog":
       DateTime now=DateTime.now();
        DateTime dt2 = DateTime.parse("2018-02-27 18:00");
        String st1=DateFormat('kk').format(dt2);
        String format = DateFormat('kk').format(now);
        var one = int.parse(st1);
        var two = int.parse(format);
        if(two>one){
          
          return Container(
          child:
           Image.asset(
            'assets/img/41.png',
            height: 180,
          ),
        );
        }
        else if(two<one){
           
           return Container(
          child:
           Image.asset(
            'assets/img/4.png',
            height: 180,
          ),
        );
        }
        return Container(
          child:Text('bye')
        );
        case "Sand":
        DateTime now=DateTime.now();
        DateTime dt2 = DateTime.parse("2018-02-27 18:00");
        String st1=DateFormat('kk').format(dt2);
        String format = DateFormat('kk').format(now);
        var one = int.parse(st1);
        var two = int.parse(format);
        if(two>one){
          
          return Container(
          child:
           Image.asset(
            'assets/img/41.png',
            height: 180,
          ),
        );
        }
        else if(two<one){
           
           return Container(
          child:
           Image.asset(
            'assets/img/4.png',
            height: 180,
          ),
        );
        }
        return Container(
          child:Text('bye')
        );
        case "Ash":
       DateTime now=DateTime.now();
        DateTime dt2 = DateTime.parse("2018-02-27 18:00");
        String st1=DateFormat('kk').format(dt2);
        String format = DateFormat('kk').format(now);
        var one = int.parse(st1);
        var two = int.parse(format);
        if(two>one){
          
          return Container(
          child:
           Image.asset(
            'assets/img/41.png',
            height: 180,
          ),
        );
        }
        else if(two<one){
           
           return Container(
          child:
           Image.asset(
            'assets/img/4.png',
            height: 180,
          ),
        );
        }
        return Container(
          child:Text('bye')
        );
        case "Squall":
        DateTime now=DateTime.now();
        DateTime dt2 = DateTime.parse("2018-02-27 18:00");
        String st1=DateFormat('kk').format(dt2);
        String format = DateFormat('kk').format(now);
        var one = int.parse(st1);
        var two = int.parse(format);
        if(two>one){
          
          return Container(
          child:
           Image.asset(
            'assets/img/41.png',
            height: 180,
          ),
        );
        }
        else if(two<one){
           
           return Container(
          child:
           Image.asset(
            'assets/img/4.png',
            height: 180,
          ),
        );
        }
        return Container(
          child:Text('bye')
        );
        case "Tomado":
        DateTime now=DateTime.now();
        DateTime dt2 = DateTime.parse("2018-02-27 18:00");
        String st1=DateFormat('kk').format(dt2);
        String format = DateFormat('kk').format(now);
        var one = int.parse(st1);
        var two = int.parse(format);
        if(two>one){
          
          return Container(
          child:
           Image.asset(
            'assets/img/41.png',
            height: 180,
          ),
        );
        }
        else if(two<one){
           
           return Container(
          child:
           Image.asset(
            'assets/img/4.png',
            height: 180,
          ),
        );
        }
        return Container(
          child:Text('bye')
        );
      default:
        return Container();
    }
  }
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
                return weatherBox(_weather,context);
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

  Widget weatherBox(Weather _weather,BuildContext context) {


    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.black,
                    Colors.black87,
                    Colors.black,
                  
                  ])),
              child: Column(

                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    margin: EdgeInsets.only(top: 32,left: 15),
                    child:
                    
                    
                    Align(
                      alignment:Alignment.bottomLeft,
                      child:
                    
                    ElevatedButton(  
                    child:
                    const Icon(Icons.arrow_back),  
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NavView(
                        )));

                      
                    },
                    style: ElevatedButton.styleFrom(shape: new
                     /* fixedSize: const Size(20,20),
                      primary: Colors.white,
                      elevation: 5,*/
                      RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.30),
                      
                      ),
                    ),
                  ),
                     )
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      "$a",
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 44,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Text(
                    "${_weather.main} : ${_weather.description}",
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 24,
                      color: const Color(0x7cdbf1ff),
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text(
                     "${_weather.temp}°C",
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 80,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  generateIcon("${_weather.main}"),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child:Icon(Icons.thermostat,color: Colors.cyan,size:55,)
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                'Max : ${_weather.high} °C\nMin : ${_weather.low} °C ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 14,
                                  color: const Color(0x7cdbf1ff),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child:
                              Icon(Icons.compare_arrows,color: Colors.cyan,size: 55,)
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                'Pression\n ${_weather.pression} hpA',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 14,
                                  color: const Color(0x7cdbf1ff),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(Icons.air,color: Colors.cyan,size: 50,)
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                '\tVent\n ${_weather.wind} Km/h',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 14,
                                  color: const Color(0x7cdbf1ff),
                                  fontWeight: FontWeight.w500,
                                  
                                ),
                              ),
                            ),
                            
                          ],
                        ),
                      ],
                      
                    ),
                    
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    padding: EdgeInsets.only(top: 30),
                    child:
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    
                    children: [    
                      Column(
                          children: [
                            Container(
                              
                              height: 60,
                              width: 60,
                            
                              
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                                  
                              child: Image.asset(
                                'assets/img/top.png',
                                height: 50,
                              )
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text('Levé\n'+DateFormat.Hm().format(DateTime.fromMillisecondsSinceEpoch(_weather.sunrise * 1000)),
                                textAlign: TextAlign.center,                               
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 14,
                                  color: const Color(0x7cdbf1ff),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 60,
                              width: 60,
                              
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                                  
                              child:Image.asset(
                                'assets/img/nox.png',
                                height: 50,
                              )
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                'Humidité\n${_weather.humidity} %',
                                textAlign: TextAlign.center,                               
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 14,
                                  color: const Color(0x7cdbf1ff),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              
                              height: 60,
                              width: 60,                              
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                                  
                              child: Image.asset(
                                'assets/img/dot.png',
                                height: 50,
                              )
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10,),
                              child: Text('Couché \n'+DateFormat.Hm().format(DateTime.fromMillisecondsSinceEpoch(_weather.sunset * 1000)),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 14,
                                  color: const Color(0x7cdbf1ff),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            
                          ],
                        ),
                    ],
                  )
                  )
                  
                ],
              ),
            )
          ],
        ),
      ),
    );  
}
  Future getCurrentWeather( ) async {
    Weather weather;
    String apikey ="f22d6da9dac96102fd7c57b6a813b2b9";
    var url = "https://api.openweathermap.org/data/2.5/weather?q=$a&units=metric&lang=fr&cnt=8&appid=$apikey";
    final response =await http.get(url);

    if (response.statusCode == 200){
      weather = Weather.fromJson(jsonDecode(response.body));
    }
    else {
      // Nice
    }
    return Weather.fromJson(jsonDecode(response.body));

  }
}
