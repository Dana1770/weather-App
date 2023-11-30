import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/Cubits/getWeatherStates.dart';
import 'package:weather_app/Cubits/get_weather_cubit/getWeatherCubit.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widgets/no_weather_body.dart';
import 'package:weather_app/widgets/weather_info_body.dart';
class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}
class _HomeViewState extends State<HomeView> {
  IconData dark=Icons.light_mode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        //title: const Text('Beautiful Weather'),
        title: const Text(
            'Beautiful Weather',
          ),

        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Searchview()));
          }, icon: const Icon(Icons.search,)),

        ],
      ),
      body:BlocBuilder<GetWeatherCubit,WeatherState>(
        builder: (context,state){
          if(state is WeatherInitialState){
            return const NoWeatherBody();
          }
          else if (state is WeatherLoadedState){
            return const WeatherInfoBody();
          }
          else{
            return Center(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset('assets/images/Animation - 1701361395879.json',width: 150,height: 150),
                const Text('Opps,There was an error 😥',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                const Text('Check your connection and try again!!',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

              ],
            ));
          }
          },
      ),
    );
  }
}
