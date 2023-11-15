import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/weatherModel.dart';

import '../Services/New_services.dart';

class Search_view extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Search City'),
      ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.blue,
                ]
            )
        ),

        child: Padding(
          padding:  EdgeInsets.all(20.0),
          child: TextFormField(
            onFieldSubmitted: (value)async{
             WeatherModel?  weatherModel=await WeatherService(Dio()).CurrentWeather(cityName: value);
             log(weatherModel!.cityName);
            },
            decoration:  InputDecoration(
              contentPadding: EdgeInsets.all(15),
              hintText: 'Enter the city',
              label: Text('Search'),
              suffix: Icon(Icons.search,color: Colors.indigo,),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),

                  borderSide: BorderSide(color: Colors.black38)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),

                  borderSide: BorderSide(color: Colors.indigo)),
              border: OutlineInputBorder(
borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Colors.black)
              ),

            ),
          ),
        ),
      ),
    );
  }
}
