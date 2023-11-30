import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Cubits/get_weather_cubit/getWeatherCubit.dart';

import '../main.dart';
class Searchview extends StatelessWidget {
  const Searchview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        elevation: 0,

        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: (){Navigator.pop(context);}
          ),
        title:const Text(
            'Search City',
          ),),
        body: Container(
        height: double.infinity,
        decoration:  BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
                colors: [
            getThemeColor(BlocProvider.of<GetWeatherCubit>(context).weatherModel?.weatherCondition),
          // Colors.orange,
                  Colors.white,

                ]
            )
        ),

        child: Padding(
          padding:  const EdgeInsets.all(20.0),
          child: TextFormField(
            onFieldSubmitted: (value)async{
             var getWeatherCubit=BlocProvider.of<GetWeatherCubit>(context);
             getWeatherCubit.getWeather(cityName:value);
             Navigator.pop(context);

            },
            decoration:  InputDecoration(
              contentPadding: const EdgeInsets.all(15),
              hintText: 'Enter the city',
              hintStyle: const TextStyle(color: Colors.black),
             labelStyle: const TextStyle(color: Colors.black),

              label: const Text('Search',style: TextStyle(fontWeight: FontWeight.bold),),
              suffix: Icon(Icons.search,color: Colors.grey[800],),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),

                  borderSide: const BorderSide(color: Colors.black)),
              focusedBorder: OutlineInputBorder(

                  borderRadius: BorderRadius.circular(15),


                  borderSide: const BorderSide(color: Colors.grey,width: 1.5)),
              border: OutlineInputBorder(

              borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.black,width: 4)
              ),

            ),
          ),
        ),
      ),
    );
  }
}
