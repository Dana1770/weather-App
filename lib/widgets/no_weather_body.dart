import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
/*
      decoration: BoxDecoration(

          gradient: LinearGradient(
              begin: Alignment.topLeft,

              colors: [
                //Colors.orangeAccent,
               // Colors.yellow,
                Colors.white,
              ]
          )
      ),
*/

      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'There is no weather 😔 ',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 5,),
              Text(
                'start searching now 🔍',
                style: TextStyle(
                  fontSize: 22,
                    fontWeight: FontWeight.bold

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
