import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/views/home_view.dart';
class Splach extends StatefulWidget {
  const Splach({Key? key}) : super(key: key);


  @override
  State<Splach> createState() => _SplachState();
}
class _SplachState extends State<Splach> {
  startSplachTimer(){
    Timer(const Duration(seconds: 4),()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>const HomeView()))
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startSplachTimer();


  }
  @override
  Widget build(BuildContext context) {
return Scaffold(
  body:Center(child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Lottie.asset('assets/images/Animation - 1701006875106.json',),
      const Text('Wait a moment 💙',style: TextStyle(fontSize: 20),)
    ],
  )),

);
  }
}
